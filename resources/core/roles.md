# Roles

The Zoho CRM [Roles API](https://www.zoho.com/crm/developer/docs/api/get-roles.html) reference provides information about the possible operations on **Roles**.

## Classes

| Class                 | Extends Classes |
| :-------------------- | :-------------- |
| [Role](#role) |  |
| [APIException](#apiexception) |  |
| [RolesOperations](#rolesoperations) |  |
| [ResponseWrapper](#responsewrapper) |  |

----

## Role

Structure of Zoho CRM [Role](../../src/com/zoho/crm/api/roles/role.rb).

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| display_label | The method to get the value of ***Role display_label*** |
| display_label=display_label | The method to set the value of ***Role display_label*** |
| forecast_manager | The method to get the value of ***Role forecast_manager*** |
| forecast_manager=***[forecast_manager](users.md#user)*** | The method to set the value of ***Role forecast_manager*** |
| share_with_peers | The method to get the value of ***Role share_with_peers*** |
| share_with_peers=share_with_peers | The method to set the value of ***Role share_with_peers*** |
| name | The method to get the value of ***Role name*** |
| name=name | The method to set the value of ***Role name*** |
| description | The method to get the value of ***Role description*** |
| description=description | The method to set the value of ***Role description*** |
| id | The method to get the value of ***Role id*** |
| id=id | The method to set the value of ***Role id*** |
| reporting_to | The method to get the value of ***Role reporting_to*** |
| reporting_to=***[reporting_to](users.md#user)*** | The method to set the value of ***Role reporting_to*** |
| admin_user | The method to get the value of ***Role admin_user*** |
| admin_user=admin_user | The method to set the value of ***Role admin_user*** |
----

[source](../../src/com/zoho/crm/api/roles/role.rb)

## APIException

Whenever the **API** returns an error response, an instance of [APIException](../../src/com/zoho/crm/api/roles/api_exception.rb) is returned for all operations.

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

[source](../../src/com/zoho/crm/api/roles/api_exception.rb)

## RolesOperations

Contains methods for all possible [Roles operations](../../src/com/zoho/crm/api/roles/response_wrapper.rb).

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| get_roles | To get the list of all roles available in your organization. |
| get_role(id) | To get the details of a specific role. |
----

[source](../../src/com/zoho/crm/api/roles/roles_operations.rb)

## ResponseWrapper

After a successful **API** request, an instance of [ResponseWrapper](../../src/com/zoho/crm/api/roles/response_wrapper.rb) is returned for **GET** operations.

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| roles | The method to get the list of obtained ***Role*** instances. |
| roles=***[roles](roles.md#role)*** | The method to set the list of obtained ***Role*** instances. |
----

[source](../../src/com/zoho/crm/api/roles/response_wrapper.rb)

