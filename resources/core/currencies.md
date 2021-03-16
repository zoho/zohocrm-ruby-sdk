# Currencies

The Zoho CRM [Currencies API](https://www.zoho.com/crm/developer/docs/api/enable-multi-currency.html) reference provides information about the possible operations on **Currencies**.

## Classes

| Class                 | Extends Classes |
| :-------------------- | :-------------- |
| [Currency](#currency) |  |
| [ResponseWrapper](#responsewrapper) |  |
| [SuccessResponse](#successresponse) |  |
| [BaseCurrencyWrapper](#basecurrencywrapper) |  |
| [ActionWrapper](#actionwrapper) |  |
| [APIException](#apiexception) |  |
| [CurrenciesOperations](#currenciesoperations) |  |
| [BodyWrapper](#bodywrapper) |  |
| [Format](#format) |  |
| [BaseCurrencyActionWrapper](#basecurrencyactionwrapper) |  |

----

## Currency

Structure of Zoho CRM [Currency](../../src/com/zoho/crm/api/currencies/currency.rb).

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| symbol | The method to get the value of ***Currency symbol*** |
| symbol=symbol | The method to set the value of ***Currency symbol*** |
| created_time | The method to get the value of ***Currency created_time*** |
| created_time=created_time | The method to set the value of ***Currency created_time*** |
| is_active | The method to get the value of ***Currency is_active*** |
| is_active=is_active | The method to set the value of ***Currency is_active*** |
| exchange_rate | The method to get the value of ***Currency exchange_rate*** |
| exchange_rate=exchange_rate | The method to set the value of ***Currency exchange_rate*** |
| format | The method to get the value of ***Currency format*** |
| format=***[format](currencies.md#format)*** | The method to set the value of ***Currency format*** |
| created_by | The method to get the value of ***Currency created_by*** |
| created_by=***[created_by](users.md#user)*** | The method to set the value of ***Currency created_by*** |
| prefix_symbol | The method to get the value of ***Currency prefix_symbol*** |
| prefix_symbol=prefix_symbol | The method to set the value of ***Currency prefix_symbol*** |
| is_base | The method to get the value of ***Currency is_base*** |
| is_base=is_base | The method to set the value of ***Currency is_base*** |
| modified_time | The method to get the value of ***Currency modified_time*** |
| modified_time=modified_time | The method to set the value of ***Currency modified_time*** |
| name | The method to get the value of ***Currency name*** |
| name=name | The method to set the value of ***Currency name*** |
| modified_by | The method to get the value of ***Currency modified_by*** |
| modified_by=***[modified_by](users.md#user)*** | The method to set the value of ***Currency modified_by*** |
| id | The method to get the value of ***Currency id*** |
| id=id | The method to set the value of ***Currency id*** |
| iso_code | The method to get the value of ***Currency iso_code*** |
| iso_code=iso_code | The method to set the value of ***Currency iso_code*** |
----

[source](../../src/com/zoho/crm/api/currencies/currency.rb)

## ResponseWrapper

After a successful **API** request, an instance of [ResponseWrapper](../../src/com/zoho/crm/api/currencies/response_wrapper.rb) is returned for GET operations

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| currencies | The method to get the list of obtained ***Currency*** instances. |
| currencies=***[currencies](currencies.md#currency)*** | The method to set the list of obtained ***Currency*** instances. |
----

[source](../../src/com/zoho/crm/api/currencies/response_wrapper.rb)

## SuccessResponse

After a successful **POST**, **PUT** or **DELETE** operation, an instance of [SuccessResponse](../../src/com/zoho/crm/api/currencies/success_response.rb) is returned.

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| status | The method to get the value of ***status*** key in  the **API** response |
| status=***[status](../util/choice.md#choice&lt;t>)*** | The method to set the value of ***status*** key in  the **API** response |
| code | The method to get the value of ***code*** key in  the **API** response |
| code=***[code](../util/choice.md#choice&lt;t>)*** | The method to set the value of ***code*** key in  the **API** response |
| message | The method to get the value of ***message*** key in  the **API** response |
| message=***[message](../util/choice.md#choice&lt;t>)*** | The method to set the value of ***message*** key in  the **API** response |
| details | The method to get the value of ***details*** key in  the **API** response |
| details=details | The method to set the value of ***details*** key in  the **API** response |
----

[source](../../src/com/zoho/crm/api/currencies/success_response.rb)

## BaseCurrencyWrapper

A structure that contains all possible keys of a single request that involves Home currency.

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| base_currency | The method to get the value of ***BaseCurrencyWrapper base_currency*** |
| base_currency=***[base_currency](currencies.md#currency)*** | The method to set the value of ***BaseCurrencyWrapper base_currency*** |
----

[source](../../src/com/zoho/crm/api/currencies/base_currency_wrapper.rb)

## ActionWrapper

After a successful **API** request, an instance of [ActionWrapper](../../src/com/zoho/crm/api/currencies/action_wrapper.rb) is returned for **POST**, **PUT** and **DELETE** operations

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| currencies | The method to get the list of obtained ***ActionResponse*** instances. |
| currencies=***[currencies](../../src/com/zoho/crm/api/currencies/action_response.rb)*** | The method to set the list of obtained ***ActionResponse*** instances. |
----

[source](../../src/com/zoho/crm/api/currencies/action_wrapper.rb)

## APIException

Whenever the **API** returns an error response, an instance of [APIException](../../src/com/zoho/crm/api/currencies/api_exception.rb) is returned for all operations.

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| status | The method to get the value of ***status*** key in  the **API** response |
| status=***[status](../util/choice.md#choice&lt;t>)*** | The method to set the value of ***status*** key in  the **API** response |
| code | The method to get the value of ***code*** key in  the **API** response |
| code=***[code](../util/choice.md#choice&lt;t>)*** | The method to set the value of ***code*** key in  the **API** response |
| message | The method to get the value of ***message*** key in  the **API** response |
| message=***[message](../util/choice.md#choice&lt;t>)*** | The method to set the value of ***message*** key in  the **API** response |
| details | The method to get the value of ***details*** key in  the **API** response |
| details=details | The method to set the value of ***details*** key in  the **API** response |
----

[source](../../src/com/zoho/crm/api/currencies/api_exception.rb)

## CurrenciesOperations

Contains methods for all possible [Currencies operations](../../src/com/zoho/crm/api/currencies/currencies_operations.rb).

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| get_currencies | To get the list of all currencies available for your org. |
| add_currencies(***[request](currencies.md#bodywrapper)***) | To add new currencies to your org. |
| update_currencies(***[request](currencies.md#bodywrapper)***) | To update the currencies' details of your org. |
| enable_multiple_currencies(***[request](currencies.md#basecurrencywrapper)***) | To enable multiple currencies for your org. |
| update_base_currency(***[request](currencies.md#basecurrencywrapper)***) | To update the base currency details of your org. |
| get_currency(id) | To get the details of specific currency. |
| update_currency(***[request](currencies.md#bodywrapper)***, id) | To update the details of specific currency. |
----

[source](../../src/com/zoho/crm/api/currencies/currencies_operations.rb)

## BodyWrapper

A structure that contains all possible keys of a single request.

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| currencies | The method to get the list of obtained ***Currency*** instances. |
| currencies=***[currencies](currencies.md#currency)*** | The method to set the list of obtained ***Currency*** instances. |
----

[source](../../src/com/zoho/crm/api/currencies/body_wrapper.rb)

## Format

Structure representing the display format of the Currency

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| decimal_separator | The method to get the value of ***Format decimal_separator*** |
| decimal_separator=***[decimal_separator](../util/choice.md#choice&lt;t>)*** | The method to set the value of ***Format decimal_separator*** |
| thousand_separator | The method to get the value of ***Format thousand_separator*** |
| thousand_separator=***[thousand_separator](../util/choice.md#choice&lt;t>)*** | The method to set the value of ***Format thousand_separator*** |
| decimal_places | The method to get the value of ***Format decimal_places*** |
| decimal_places=***[decimal_places](../util/choice.md#choice&lt;t>)*** | The method to set the value of ***Format decimal_places*** |
----

[source](../../src/com/zoho/crm/api/currencies/format.rb)

## BaseCurrencyActionWrapper

After a successful **API** request involving Home currency, an instance of [BaseCurrencyActionWrapper](../../src/com/zoho/crm/api/currencies/base_currency_action_wrapper.rb) is returned for **POST** and **PUT** operations

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| base_currency | The method to get the value of ***BaseCurrencyActionWrapper base_currency*** |
| base_currency=***[base_currency](../../src/com/zoho/crm/api/currencies/action_response.rb)*** | The method to set the value of ***BaseCurrencyActionWrapper base_currency*** |
----

[source](../../src/com/zoho/crm/api/currencies/base_currency_action_wrapper.rb)
