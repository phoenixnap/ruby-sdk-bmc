require 'test/unit'
require 'test/unit/testcase'
require 'test/unit/ui/console/testrunner'
require 'test/unit/testsuite'
require 'test/unit/testresult'

require_relative 'tc_audit_api'
require_relative 'tc_billing_api'
require_relative 'tc_bmc_api'
require_relative 'tc_invoicing_api'
require_relative 'tc_ip_api'
require_relative 'tc_network_api'
require_relative 'tc_rancher_api'
require_relative 'tc_tag_api'
require_relative 'tc_networkstorage_api'
require_relative 'tc_payments_api'
require_relative 'tc_location_api'
require_relative 'tc_misc_test'

class TS_HelloWorld
    def self.suite()
        suite = Test::Unit::TestSuite::new
        suite << TC_AuditApi.suite
        suite << TC_BillingApi.suite
        suite << TC_BmcApi.suite
        suite << TC_InvoicingApi.suite
        suite << TC_IpApi.suite
        suite << TC_NetworkApi.suite
        suite << TC_RancherApi.suite
        suite << TC_TagApi.suite
        suite << TC_NetworkStorageApi.suite
        suite << TC_PaymentsApi.suite
        suite << TC_LocationApi.suite
        suite << TC_Misc.suite

        return suite
    end
end

tr = Test::Unit::TestResult::new

TS_HelloWorld.suite.run(tr) do|result|
  puts(result)
end