# InvoicingApi::InvoicesApi

All URIs are relative to *https://api.phoenixnap.com/invoicing/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**invoices_get**](InvoicesApi.md#invoices_get) | **GET** /invoices | List invoices. |
| [**invoices_invoice_id_generate_pdf_post**](InvoicesApi.md#invoices_invoice_id_generate_pdf_post) | **POST** /invoices/{invoiceId}/actions/generate-pdf | Generate invoice details as PDF. |
| [**invoices_invoice_id_get**](InvoicesApi.md#invoices_invoice_id_get) | **GET** /invoices/{invoiceId} | Get invoice details. |
| [**invoices_invoice_id_pay_post**](InvoicesApi.md#invoices_invoice_id_pay_post) | **POST** /invoices/{invoiceId}/actions/pay | Pay an invoice. |


## invoices_get

> <PaginatedInvoices> invoices_get(opts)

List invoices.

List invoices.

### Examples

```ruby
require 'time'
require 'pnap_invoicing_api'
# setup authorization
InvoicingApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = InvoicingApi::InvoicesApi.new
opts = {
  number: '13218-1180326', # String | A user-friendly reference number assigned to the invoice.
  status: 'PAID', # String | Payment status of the invoice.
  sent_on_from: Time.parse('2020-04-13T00:00:00.000Z'), # Time | Minimum value to filter invoices by sent on date.
  sent_on_to: Time.parse('2022-04-13T00:00:00.000Z'), # Time | Maximum value to filter invoices by sent on date.
  limit: 25, # Integer | The limit of the number of results returned. The number of records returned may be smaller than the limit.
  offset: 5, # Integer | The number of items to skip in the results.
  sort_field: 'number', # String | If a sortField is requested, pagination will be done after sorting. Default sorting is by number.
  sort_direction: 'ASC' # String | Sort Given Field depending on the desired direction. Default sorting is descending.
}

begin
  # List invoices.
  result = api_instance.invoices_get(opts)
  p result
rescue InvoicingApi::ApiError => e
  puts "Error when calling InvoicesApi->invoices_get: #{e}"
end
```

#### Using the invoices_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedInvoices>, Integer, Hash)> invoices_get_with_http_info(opts)

```ruby
begin
  # List invoices.
  data, status_code, headers = api_instance.invoices_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedInvoices>
rescue InvoicingApi::ApiError => e
  puts "Error when calling InvoicesApi->invoices_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **number** | **String** | A user-friendly reference number assigned to the invoice. | [optional] |
| **status** | **String** | Payment status of the invoice. | [optional] |
| **sent_on_from** | **Time** | Minimum value to filter invoices by sent on date. | [optional] |
| **sent_on_to** | **Time** | Maximum value to filter invoices by sent on date. | [optional] |
| **limit** | **Integer** | The limit of the number of results returned. The number of records returned may be smaller than the limit. | [optional][default to 100] |
| **offset** | **Integer** | The number of items to skip in the results. | [optional][default to 0] |
| **sort_field** | **String** | If a sortField is requested, pagination will be done after sorting. Default sorting is by number. | [optional][default to &#39;sentOn&#39;] |
| **sort_direction** | **String** | Sort Given Field depending on the desired direction. Default sorting is descending. | [optional][default to &#39;DESC&#39;] |

### Return type

[**PaginatedInvoices**](PaginatedInvoices.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## invoices_invoice_id_generate_pdf_post

> File invoices_invoice_id_generate_pdf_post(invoice_id)

Generate invoice details as PDF.

Generate invoice details as PDF.

### Examples

```ruby
require 'time'
require 'pnap_invoicing_api'
# setup authorization
InvoicingApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = InvoicingApi::InvoicesApi.new
invoice_id = '5fa54d1e91867c03a0a7b4a4' # String | The unique resource identifier of the Invoice.

begin
  # Generate invoice details as PDF.
  result = api_instance.invoices_invoice_id_generate_pdf_post(invoice_id)
  p result
rescue InvoicingApi::ApiError => e
  puts "Error when calling InvoicesApi->invoices_invoice_id_generate_pdf_post: #{e}"
end
```

#### Using the invoices_invoice_id_generate_pdf_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(File, Integer, Hash)> invoices_invoice_id_generate_pdf_post_with_http_info(invoice_id)

```ruby
begin
  # Generate invoice details as PDF.
  data, status_code, headers = api_instance.invoices_invoice_id_generate_pdf_post_with_http_info(invoice_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => File
rescue InvoicingApi::ApiError => e
  puts "Error when calling InvoicesApi->invoices_invoice_id_generate_pdf_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **invoice_id** | **String** | The unique resource identifier of the Invoice. |  |

### Return type

**File**

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/pdf, application/json


## invoices_invoice_id_get

> <Invoice> invoices_invoice_id_get(invoice_id)

Get invoice details.

Get invoice details.

### Examples

```ruby
require 'time'
require 'pnap_invoicing_api'
# setup authorization
InvoicingApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = InvoicingApi::InvoicesApi.new
invoice_id = '5fa54d1e91867c03a0a7b4a4' # String | The unique resource identifier of the Invoice.

begin
  # Get invoice details.
  result = api_instance.invoices_invoice_id_get(invoice_id)
  p result
rescue InvoicingApi::ApiError => e
  puts "Error when calling InvoicesApi->invoices_invoice_id_get: #{e}"
end
```

#### Using the invoices_invoice_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Invoice>, Integer, Hash)> invoices_invoice_id_get_with_http_info(invoice_id)

```ruby
begin
  # Get invoice details.
  data, status_code, headers = api_instance.invoices_invoice_id_get_with_http_info(invoice_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Invoice>
rescue InvoicingApi::ApiError => e
  puts "Error when calling InvoicesApi->invoices_invoice_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **invoice_id** | **String** | The unique resource identifier of the Invoice. |  |

### Return type

[**Invoice**](Invoice.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## invoices_invoice_id_pay_post

> Object invoices_invoice_id_pay_post(invoice_id, opts)

Pay an invoice.

Manually pay an invoice.

### Examples

```ruby
require 'time'
require 'pnap_invoicing_api'
# setup authorization
InvoicingApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = InvoicingApi::InvoicesApi.new
invoice_id = '5fa54d1e91867c03a0a7b4a4' # String | The unique resource identifier of the Invoice.
opts = {
  body: { ... } # Object | 
}

begin
  # Pay an invoice.
  result = api_instance.invoices_invoice_id_pay_post(invoice_id, opts)
  p result
rescue InvoicingApi::ApiError => e
  puts "Error when calling InvoicesApi->invoices_invoice_id_pay_post: #{e}"
end
```

#### Using the invoices_invoice_id_pay_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> invoices_invoice_id_pay_post_with_http_info(invoice_id, opts)

```ruby
begin
  # Pay an invoice.
  data, status_code, headers = api_instance.invoices_invoice_id_pay_post_with_http_info(invoice_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue InvoicingApi::ApiError => e
  puts "Error when calling InvoicesApi->invoices_invoice_id_pay_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **invoice_id** | **String** | The unique resource identifier of the Invoice. |  |
| **body** | **Object** |  | [optional] |

### Return type

**Object**

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

