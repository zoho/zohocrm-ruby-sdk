# Variables

The Zoho CRM [Variables API](https://www.zoho.com/crm/developer/docs/api/get-variables.html) reference provides information about the possible operations on **Variables**.

## Classes

| Class                 | Extends Classes |
| :-------------------- | :-------------- |
| [ResponseWrapper](#responsewrapper) |  |
| [BodyWrapper](#bodywrapper) |  |
| [APIException](#apiexception) |  |
| [VariablesOperations](#variablesoperations) |  |
| [Variable](#variable) |  |
| [SuccessResponse](#successresponse) |  |
| [ActionWrapper](#actionwrapper) |  |

----

## ResponseWrapper

After a successful **API** request, an instance of [ResponseWrapper](../../src/com/zoho/crm/api/variables/response_wrapper.rb) is returned for GET operations

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| variables | The method to get the list of obtained ***Variable*** instances. |
| variables=***[variables](variables.md#variable)*** | The method to set the list of obtained ***Variable*** instances. |
----

[source](../../src/com/zoho/crm/api/variables/response_wrapper.rb)

## BodyWrapper

A structure that contains all possible keys of a single request.

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| variables | The method to get the list of obtained ***Variable*** instances. |
| variables=***[variables](variables.md#variable)*** | The method to set the list of obtained ***Variable*** instances. |
----

[source](../../src/com/zoho/crm/api/variables/body_wrapper.rb)

## APIException

Whenever the **API** returns an error response, an instance of [APIException](../../src/com/zoho/crm/api/variables/api_exception.rb) is returned for all operations.

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

[source](../../src/com/zoho/crm/api/variables/api_exception.rb)

## VariablesOperations

Contains methods for all possible [Variables operations](../../src/com/zoho/crm/api/variables/variables_operations.rb).

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| get_variables(***[param_instance](../parameter_map.md#parametermap)***) | To get the list of variables available for your organization. |
| create_variables(***[request](variables.md#bodywrapper)***) | To add new variables to your organization. |
| update_variables(***[request](variables.md#bodywrapper)***) | To update the details of variables. |
| delete_variables(***[param_instance](../parameter_map.md#parametermap)***) | To delete multiple variables. |
| get_variable_by_id(***[param_instance](../parameter_map.md#parametermap)***, id) | To get the details of a specific variable by its unique ID. |
| update_variable_by_id(***[request](variables.md#bodywrapper)***, id) | To update the details of a specific variable by its unique ID. |
| delete_variable(id) | To delete a specific variable. |
| get_variable_for_api_name(***[param_instance](../parameter_map.md#parametermap)***, api_name) | To get the details of a variable by its API name. |
| update_variable_by_api_name(***[request](variables.md#bodywrapper)***, api_name) | To update the details of a variable by its API name. |
----

### Inner Static Classes

| Class                                    |
| :--------------------------------------- |
| [GetVariablesParam](#getvariablesparam) |
| [DeleteVariablesParam](#deletevariablesparam) |
| [GetVariableByIDParam](#getvariablebyidparam) |
| [GetVariableForAPINameParam](#getvariableforapinameparam) |
----

[source](../../src/com/zoho/crm/api/variables/variables_operations.rb)

## Variable

Structure of Zoho CRM [Variable](../../src/com/zoho/crm/api/variables/variable.rb).

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| api_name | The method to get the value of ***Variable api_name*** |
| api_name=api_name | The method to set the value of ***Variable api_name*** |
| name | The method to get the value of ***Variable name*** |
| name=name | The method to set the value of ***Variable name*** |
| description | The method to get the value of ***Variable description*** |
| description=description | The method to set the value of ***Variable description*** |
| id | The method to get the value of ***Variable id*** |
| id=id | The method to set the value of ***Variable id*** |
| type | The method to get the value of ***Variable type*** |
| type=type | The method to set the value of ***Variable type*** |
| variable_group | The method to get the value of ***Variable variable_group*** |
| variable_group=***[variable_group](variable_groups.md#variablegroup)*** | The method to set the value of ***Variable variable_group*** |
| value | The method to get the value of ***Variable value*** |
| value=value | The method to set the value of ***Variable value*** |
----

[source](../../src/com/zoho/crm/api/variables/variable.rb)

## SuccessResponse

After a successful **POST**, **PUT** or **DELETE** operation, an instance of [SuccessResponse](../../src/com/zoho/crm/api/variables/success_response.rb) is returned.

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

[source](../../src/com/zoho/crm/api/variables/success_response.rb)

## ActionWrapper

After a successful **API** request, an instance of [ActionWrapper](../../src/com/zoho/crm/api/variables/action_wrapper.rb) is returned for **POST**, **PUT** and **DELETE** operations.

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| variables | The method to get the list of obtained ***ActionResponse*** instances. |
| variables=***[variables](../../src/com/zoho/crm/api/variables/action_response.rb)*** | The method to set the list of obtained ***ActionResponse*** instances. |
----

[source](../../src/com/zoho/crm/api/variables/action_wrapper.rb)

## GetVariablesParam

Contains all possible parameters for the [Get Variables operation](../../src/com/zoho/crm/api/variables/variables_operations.rb).

### Fields

| Field                      | Description                                        |
| :------------------------- | :------------------------------------------------- |
| group | Represents `group` parameter |
----

## DeleteVariablesParam

Contains all possible parameters for the [Delete Variables operation](../../src/com/zoho/crm/api/variables/variables_operations.rb).

### Fields

| Field                      | Description                                        |
| :------------------------- | :------------------------------------------------- |
| ids | Represents `ids` parameter |
----

## GetVariableByIDParam

Contains all possible parameters for the [Get Variable By ID operation](../../src/com/zoho/crm/api/variables/variables_operations.rb).

### Fields

| Field                      | Description                                        |
| :------------------------- | :------------------------------------------------- |
| group | Represents `group` parameter |
----

## GetVariableForAPINameParam

Contains all possible parameters for the [Get Variable For APIName operation](../../src/com/zoho/crm/api/variables/variables_operations.rb).

### Fields

| Field                      | Description                                        |
| :------------------------- | :------------------------------------------------- |
| group | Represents `group` parameter |
----
