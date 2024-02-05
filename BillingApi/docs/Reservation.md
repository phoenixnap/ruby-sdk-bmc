# BillingApi::Reservation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The reservation identifier. |  |
| **product_code** | **String** | The code identifying the product. This code has significant across all locations. |  |
| **product_category** | **String** | The product category. |  |
| **location** | [**LocationEnum**](LocationEnum.md) |  |  |
| **reservation_model** | [**ReservationModelEnum**](ReservationModelEnum.md) |  |  |
| **initial_invoice_model** | [**ReservationInvoicingModelEnum**](ReservationInvoicingModelEnum.md) |  | [optional] |
| **start_date_time** | **Time** | The point in time (in UTC) when the reservation starts. |  |
| **end_date_time** | **Time** | The point in time (in UTC) when the reservation end. | [optional] |
| **last_renewal_date_time** | **Time** | The point in time (in UTC) when the reservation was renewed last. | [optional] |
| **next_renewal_date_time** | **Time** | The point in time (in UTC) when the reservation will be renewed if auto renew is set to true. | [optional] |
| **auto_renew** | **Boolean** | A flag indicating whether the reservation will auto-renew (default is true). |  |
| **sku** | **String** | The sku that will be applied to this reservation. It is useful to find out the price by querying the /product endpoint. |  |
| **price** | **Float** | Reservation price. |  |
| **price_unit** | [**PriceUnitEnum**](PriceUnitEnum.md) |  |  |
| **assigned_resource_id** | **String** | The resource ID currently being assigned to Reservation. | [optional] |
| **next_billing_date** | **Date** | Next billing date for Reservation. | [optional] |

## Example

```ruby
require 'pnap_billing_api'

instance = BillingApi::Reservation.new(
  id: 83604275-bdba-490a-b87a-978e8dffdb14,
  product_code: s1.c1.small,
  product_category: server,
  location: null,
  reservation_model: null,
  initial_invoice_model: null,
  start_date_time: 2020-03-19T16:39Z,
  end_date_time: 2020-04-19T16:39Z,
  last_renewal_date_time: 2020-03-19T16:39Z,
  next_renewal_date_time: 2020-04-19T16:39Z,
  auto_renew: true,
  sku: XXX-XXX-XXX,
  price: 175,
  price_unit: null,
  assigned_resource_id: 83604275-bdba-490a-b87a-978e8dffdb14,
  next_billing_date: Sun Apr 19 00:00:00 UTC 2020
)
```

