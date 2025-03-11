# BillingApi::OperatingSystemRecord

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique identifier of the rated usage record. |  |
| **product_category** | [**RatedUsageProductCategoryEnum**](RatedUsageProductCategoryEnum.md) |  |  |
| **product_code** | **String** | The code identifying the product associated to this usage record. |  |
| **location** | [**LocationEnum**](LocationEnum.md) |  |  |
| **year_month** | **String** | Year and month of the usage record. | [optional] |
| **start_date_time** | **Time** | The point in time (in UTC) when usage has started. |  |
| **end_date_time** | **Time** | The point in time (in UTC) until usage has been rated. |  |
| **cost** | **Integer** | The rated usage in cents. |  |
| **cost_before_discount** | **Integer** | The cost in cents before discount. | [optional] |
| **cost_description** | **String** | The rated usage cost description. | [optional] |
| **price_model** | **String** | The price model applied to this usage record. |  |
| **unit_price** | **Float** | The unit price. |  |
| **unit_price_description** | **String** | User friendly description of the unit price. |  |
| **quantity** | **Float** | The number of units being charged. |  |
| **active** | **Boolean** | A flag indicating whether the rated usage record is still active. |  |
| **usage_session_id** | **String** | The usage session ID is used to correlate rated usage records across periods of time. For example, a server used for over a month will generate multiple rated usage records. The entire usage session cost can be computed by aggregating the records having the same usage session ID. It is usual to have one rated usage record per month or invoice. |  |
| **correlation_id** | **String** | Holds usage record id |  |
| **reservation_id** | **String** | Reservation id associated with this rated usage record. | [optional] |
| **discount_details** | [**ApplicableDiscountDetails**](ApplicableDiscountDetails.md) |  | [optional] |
| **credit_details** | [**Array&lt;CreditDetails&gt;**](CreditDetails.md) |  | [optional] |
| **metadata** | [**OperatingSystemDetails**](OperatingSystemDetails.md) |  |  |

## Example

```ruby
require 'pnap_billing_api'

instance = BillingApi::OperatingSystemRecord.new(
  id: ec4a9d49-1cef-49e9-b85e-b560f88bcd26,
  product_category: null,
  product_code: s1.c1.small,
  location: null,
  year_month: 2020-03,
  start_date_time: 2020-03-19T16:39Z,
  end_date_time: 2020-03-20T17:00Z,
  cost: 384,
  cost_before_discount: 15456,
  cost_description: 24 Hour(s) @ $0.16 /Hour,
  price_model: hourly,
  unit_price: 0.16,
  unit_price_description: per hour,
  quantity: 24,
  active: true,
  usage_session_id: ec4a9d49-1cef-49e9-b85e-b560f88bcd26,
  correlation_id: ec4a9d49-1cef-49e9-b85e-b560f88bcd26,
  reservation_id: c32a24a1-5949-4b60-99c0-c8aaa3a92b04,
  discount_details: null,
  credit_details: null,
  metadata: null
)
```

