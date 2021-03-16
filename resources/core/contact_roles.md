# ContactRoles

The Zoho CRM [ContactRoles API](#ContactRoles) reference provides information about the possible operations on **ContactRoles**.

## Classes

| Class                 | Extends Classes |
| :-------------------- | :-------------- |
| [ResponseWrapper](#responsewrapper) |  |
| [SuccessResponse](#successresponse) |  |
| [ContactRolesOperations](#contactrolesoperations) |  |
| [BodyWrapper](#bodywrapper) |  |
| [APIException](#apiexception) |  |
| [ActionWrapper](#actionwrapper) |  |
| [ContactRole](#contactrole) |  |

----

## ResponseWrapper

After a successful **API** request, and instance of [ResponseWrapper](../../src/com/zoho/crm/api/contact_roles/response_wrapper.rb) is returned for GET operations

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| contact_roles | The method to get the list of obtained ***ContactRole*** instances. |
| contact_roles=***[contact_roles](contact_roles.md#contactrole)*** | The method to set the list of obtained ***ContactRole*** instances. |
----

[source](../../src/com/zoho/crm/api/contact_roles/response_wrapper.rb)

## SuccessResponse

After a successful **POST**, **PUT** or **DELETE** operation, an instance of [SuccessResponse](../../src/com/zoho/crm/api/contact_roles/success_response.rb) is returned.

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

[source](../../src/com/zoho/crm/api/contact_roles/success_response.rb)

## ContactRolesOperations

Contains methods for all possible [ContactRoles operations](../../src/com/zoho/crm/api/contact_roles/contact_roles_operations.rb).

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| get_contact_roles | To get the list of all contact roles. |
| create_contact_roles(***[request](contact_roles.md#bodywrapper)***) | To create contact roles. |
| update_contact_roles(***[request](contact_roles.md#bodywrapper)***) | To update contact roles. |
| delete_contact_roles(***[param_instance](../parameter_map.md#parametermap)***) | To delete contact roles. |
| get_contact_role(id) | To get specific contact role. |
| update_contact_role(***[request](contact_roles.md#bodywrapper)***, id) | To update specific contact role. |
| delete_contact_role(id) | To delete specific contact role. |
----

### Inner Static Classes

| Class                                    |
| :--------------------------------------- |
| [DeleteContactRolesParam](#deletecontactrolesparam) |
----

[source](../../src/com/zoho/crm/api/contact_roles/contact_roles_operations.rb)

## BodyWrapper

The structure that contains all possible keys of a request.

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| contact_roles | The method to get the list of obtained ***ContactRole*** instances. |
| contact_roles=***[contact_roles](contact_roles.md#contactrole)*** | The method to set the list of obtained ***ContactRole*** instances. |
----

[source](../../src/com/zoho/crm/api/contact_roles/body_wrapper.rb)

## APIException

Whenever the **API** returns an error response, an instance of [APIException](../../src/com/zoho/crm/api/contact_roles/api_exception.rb) is returned for all operations

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

[source](../../src/com/zoho/crm/api/contact_roles/api_exception.rb)

## ActionWrapper

After a successful **API** request, an instance of [ActionWrapper](../../src/com/zoho/crm/api/contact_roles/action_wrapper.rb) is returned for **POST**, **PUT** and **DELETE** operations

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| contact_roles | The method to get the list of obtained ***ActionResponse*** instances. |
| contact_roles=***[contact_roles](../../src/com/zoho/crm/api/contact_roles/action_response.rb)*** | The method to set the list of obtained ***ActionResponse*** instances. |
----

[source](../../src/com/zoho/crm/api/contact_roles/action_wrapper.rb)

## ContactRole

Structure of Zoho CRM [ContactRole](../../src/com/zoho/crm/api/contact_roles/contact_role.rb).

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| id | The method to get the value of ***ContactRole id*** |
| id=id | The method to set the value of ***ContactRole id*** |
| name | The method to get the value of ***ContactRole name*** |
| name=name | The method to set the value of ***ContactRole name*** |
| sequence_number | The method to get the value of ***ContactRole sequence_number*** |
| sequence_number=sequence_number | The method to set the value of ***ContactRole sequence_number*** |
----

[source](../../src/com/zoho/crm/api/contact_roles/contact_role.rb)

## DeleteContactRolesParam

Contains all possible parameters for the [Delete ContactRoles operation](../../src/com/zoho/crm/api/contact_roles/contact_roles_operations.rb).

### Fields

| Field                      | Description                                        |
| :------------------------- | :------------------------------------------------- |
| ids | Represents `ids` parameter |
----
