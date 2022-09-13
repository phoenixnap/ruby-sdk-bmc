$executed = false

class TestUtils
    def self.setup_expectation(requestToMock, responseToGet, times)
        uri = URI('http://localhost:1080/expectation')
        # Setup request URL
        req = Net::HTTP::Put.new(uri)

        body = {
            httpRequest: requestToMock,
            httpResponse: responseToGet,
            times: {
                remainingTimes: 1,
                unlimited: false
            }
        }

        # Setup expectation
        req.body = body.to_json

        # Get response.
        res = Net::HTTP.start(uri.hostname, uri.port) do |http|
            http.request(req)
        end

        parsed = JSON.parse(res.body)

        return parsed[0]["id"]
    end

    def self.verify_expectation_matched_times(expectationId, times)
        uri = URI('http://localhost:1080/verify')
        # Setup request URL
        req = Net::HTTP::Put.new(uri)

        body = {
            expectationId: {
                id: expectationId
            },
            # httpRequest: request,
            times: {
                atLeast: times,
                atMost: times
            }
        }

        req.body = body.to_json 

        # Get response
        res = Net::HTTP.start(uri.hostname, uri.port) do |http|
            http.request(req)
        end

        return res
    end

    def self.reset_mockserver
        if !$executed then
            uri = URI('http://localhost:1080/reset')
            req = Net::HTTP::Put.new(uri)
    
            Net::HTTP.start(uri.hostname, uri.port) do |http|
                http.request(req)
            end
            $executed = true
        end
    end 

    def self.reset_expectations
        uri = URI('http://localhost:1080/clear')
        req = Net::HTTP::Put.new(uri)

        Net::HTTP.start(uri.hostname, uri.port) do |http|
            http.request(req)
        end
    end

    def self.generate_payloads_from(filename, payloadsPath = "./payloads")
        file = File.read("#{payloadsPath}/#{filename}.json")
        payload = JSON.parse(file, {:symbolize_names => true})
        return payload[:request], payload[:response]
    end

    def self.generate_query_params(request)
        opts = {}
        qplist = request[:queryStringParameters]
        qplist.each do |qp|
            values = qp[:values]
            opts[qp[:name].to_sym] = if values.length() == 1 then values[0] else values end
        end
        return opts
    end

    def self.extract_id_from(request, symbol = :id)
        return request[:pathParameters][symbol][0]
    end

    def self.extract_request_body(request)
        body = request[:body][:json]
        if body.is_a?(Array) then return body[0] else return body end
    end
end