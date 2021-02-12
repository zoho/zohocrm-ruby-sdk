# VariableGroups

The Zoho CRM [VariableGroups API](https://www.zoho.com/crm/developer/docs/api/get-variable-group.html) reference provides information about the possible operations on **VariableGroups**.

## Classes

| Class                 | Extends Classes |
| :-------------------- | :-------------- |
| [ResponseWrapper](#responsewrapper) |  |
| [VariableGroup](#variablegroup) |  |
| [VariableGroupsOperations](#variablegroupsoperations) |  |
| [APIException](#apiexception) |  |

----

## ResponseWrapper

After a successful **API** request, an instance of [ResponseWrapper](../../src/com/zoho/crm/api/variable_groups/response_wrapper.rb) is returned for ***GET*** operations.

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| variable_groups | The method to get the list of obtained ***VariableGroup*** instances. |
| variable_groups=***[variable_groups](variable_groups.md#variablegroup)*** | The method to set the list of obtained ***VariableGroup*** instances. |
----

[source](../../src/com/zoho/crm/api/variable_groups/response_wrapper.rb)

## VariableGroup

Structure of Zoho CRM [VariableGroup](../../src/com/zoho/crm/api/variable_groups/variable_group.rb).

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| display_label | The method to get the value of ***VariableGroup display_label*** |
| display_label=display_label | The method to set the value of ***VariableGroup display_label*** |
| api_name | The method to get the value of ***VariableGroup api_name*** |
| api_name=api_name | The method to set the value of ***VariableGroup api_name*** |
| name | The method to get the value of ***VariableGroup name*** |
| name=name | The method to set the value of ***VariableGroup name*** |
| description | The method to get the value of ***VariableGroup description*** |
| description=description | The method to set the value of ***VariableGroup description*** |
| id | The method to get the value of ***VariableGroup id*** |
| id=id | The method to set the value of ***VariableGroup id*** |
----

[source](../../src/com/zoho/crm/api/variable_groups/variable_group.rb)

## VariableGroupsOperations

Contains methods for all possible [VariableGroups operations](../../src/com/zoho/crm/api/variable_groups/variable_groups_operations.rb).

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| get_variable_groups |  |
| get_variable_group_by_id(id) |  |
| get_variable_group_by_api_name(api_name) |  |
----

[source](../../src/com/zoho/crm/api/variable_groups/variable_groups_operations.rb)

## APIException

Whenever the **API** returns an error response, an instance of [APIException](../../src/com/zoho/crm/api/variable_groups/api_exception.rb) is returned for all operations.

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| code | The method to get the value of ***code*** key in  the **API** response |
| code=***[code](../util/choice.md#choice&lt;t>)*** | The method to set the value of ***code*** key in  the **API** response |
| status | The method to get the value of ***status*** key in  the **API** response |
| status=***[status](../util/choice.md#choice&lt;t>)*** | The method to set the value of ***status*** key in  the **API** response |
| message | The method to get the value of ***message*** key in  the **API** response |
| message=***[message](../util/choice.md#choice&lt;t>)*** | The method to set the value of ***message*** key in  the **API** response |
| details | The method to get the value of ***details*** key in  the **API** response |
| details=details | The method to set the value of ***details*** key in  the **API** response |
----

[source](../../src/com/zoho/crm/api/variable_groups/api_exception.rb)
