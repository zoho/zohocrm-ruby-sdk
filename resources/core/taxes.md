# Taxes

The Zoho CRM [Org Tax API](#Taxes) reference provides information about the possible operations on **Org Taxes**.

## Classes

| Class                 | Extends Classes |
| :-------------------- | :-------------- |
| [TaxesOperations](#taxesoperations) |  |
| [Preference](#preference) |  |
| [ActionWrapper](#actionwrapper) |  |
| [SuccessResponse](#successresponse) |  |
| [APIException](#apiexception) |  |
| [ResponseWrapper](#responsewrapper) |  |
| [BodyWrapper](#bodywrapper) |  |
| [Tax](#tax) |  |

----

## TaxesOperations

Contains methods for all possible [TaxesOperations operations](../../src/com/zoho/crm/api/taxes/taxes_operations.rb).

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| get_taxes | To get the taxes of your organization. |
| create_taxes(***[request](taxes.md#bodywrapper)***) | To add taxes to your organization. |
| update_taxes(***[request](taxes.md#bodywrapper)***) | To update the existing taxes of your organization. |
| delete_taxes(***[param_instance](../parameter_map.md#parametermap)***) | To delete multiple taxes from your organization. |
| get_tax(id) | To get the details of a specific tax. |
| delete_tax(id) | To delete a specific tax from your organization. |
----

### Inner Static Classes

| Class                                    |
| :--------------------------------------- |
| [DeleteTaxesParam](#deletetaxesparam) |
----

[source](../../src/com/zoho/crm/api/taxes/taxes_operations.rb)

## Preference

Structure representing the properties of the Taxes set by the User.

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| auto_populate_tax | The method to get the value of ***Preference auto_populate_tax*** |
| auto_populate_tax=auto_populate_tax | The method to set the value of ***Preference auto_populate_tax*** |
| modify_tax_rates | The method to get the value of ***Preference modify_tax_rates*** |
| modify_tax_rates=modify_tax_rates | The method to set the value of ***Preference modify_tax_rates*** |
----

[source](../../src/com/zoho/crm/api/taxes/preference.rb)

## ActionWrapper

After a successful **API** request, an instance of [ActionWrapper](../../src/com/zoho/crm/api/taxes/action_wrapper.rb) is returned for **POST**, **PUT** and **DELETE** operations.

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| taxes | The method to get the list of obtained ***ActionResponse*** instances. |
| taxes=***[taxes](../../src/com/zoho/crm/api/taxes/action_response.rb)*** | The method to set the list of obtained ***ActionResponse*** instances. |
----

[source](../../src/com/zoho/crm/api/taxes/action_wrapper.rb)

## SuccessResponse

After a successful **POST**, **PUT** or **DELETE** operation, an instance of [SuccessResponse](../../src/com/zoho/crm/api/taxes/success_response.rb) is returned.

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

[source](../../src/com/zoho/crm/api/taxes/success_response.rb)

## APIException

Whenever the **API** returns an error response, an instance of [APIException](../../src/com/zoho/crm/api/taxes/api_exception.rb) is returned for all operations.

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

[source](../../src/com/zoho/crm/api/taxes/api_exception.rb)

## ResponseWrapper

After a successful **API** request, an instance of [ResponseWrapper](../../src/com/zoho/crm/api/taxes/response_wrapper.rb) is returned for ***GET*** operations

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| taxes | The method to get the list of obtained ***Tax*** instances. |
| taxes=***[taxes](taxes.md#tax)*** | The method to set the list of obtained ***Tax*** instances. |
| preference | The method to get the value of ***ResponseWrapper preference*** |
| preference=***[preference](taxes.md#preference)*** | The method to set the value of ***ResponseWrapper preference*** |
----

[source](../../src/com/zoho/crm/api/taxes/response_wrapper.rb)

## BodyWrapper

A structure that contains all possible keys of a single request.

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| taxes | The method to get the list of obtained ***Tax*** instances. |
| taxes=***[taxes](taxes.md#tax)*** | The method to set the list of obtained ***Tax*** instances. |
----

[source](../../src/com/zoho/crm/api/taxes/body_wrapper.rb)

## Tax

Structure of Zoho CRM [Tax](../../src/com/zoho/crm/api/taxes/tax.rb).

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| display_label | The method to get the value of ***Tax display_label*** |
| display_label=display_label | The method to set the value of ***Tax display_label*** |
| name | The method to get the value of ***Tax name*** |
| name=name | The method to set the value of ***Tax name*** |
| id | The method to get the value of ***Tax id*** |
| id=id | The method to set the value of ***Tax id*** |
| value | The method to get the value of ***Tax value*** |
| value=value | The method to set the value of ***Tax value*** |
| sequence_number | The method to get the value of ***Tax sequence_number*** |
| sequence_number=sequence_number | The method to set the value of ***Tax sequence_number*** |
----

[source](../../src/com/zoho/crm/api/taxes/tax.rb)

## DeleteTaxesParam

Contains all possible parameters for the [Delete Taxes operation](../../src/com/zoho/crm/api/taxes/taxes_operations.rb).

### Fields

| Field                      | Description                                        |
| :------------------------- | :------------------------------------------------- |
| ids | Represents `ids` parameter |
----
