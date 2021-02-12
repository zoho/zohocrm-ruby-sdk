# ShareRecords

The Zoho CRM [ShareRecords API](https://www.zoho.com/crm/developer/docs/api/get-shared-record-details.html) reference provides information about the possible operations on **ShareRecords**.

## Classes

| Class                 | Extends Classes |
| :-------------------- | :-------------- |
| [SuccessResponse](#successresponse) |  |
| [ShareRecordsOperations](#sharerecordsoperations) |  |
| [SharedThrough](#sharedthrough) |  |
| [APIException](#apiexception) |  |
| [ResponseWrapper](#responsewrapper) |  |
| [ShareRecord](#sharerecord) |  |
| [DeleteActionWrapper](#deleteactionwrapper) |  |
| [BodyWrapper](#bodywrapper) |  |
| [ActionWrapper](#actionwrapper) |  |

----

## SuccessResponse

After a successful **POST**, **PUT** or **DELETE** operation, an instance of [SuccessResponse](../../src/com/zoho/crm/api/share_records/success_response.rb) is returned.

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

[source](../../src/com/zoho/crm/api/share_records/success_response.rb)

## ShareRecordsOperations

Contains methods for all possible [ShareRecords operations](../../src/com/zoho/crm/api/share_records/share_records_operations.rb).

### Constructors

| Constructor                                                   | Description                                                                     |
| :------------------------------------------------------------ | :------------------------------------------------------------------------------ |
| initialize(module_api_name, record_id) | Creates a ***ShareRecordsOperations*** class instance with the ***moduleAPIName*** and ***recordId***. |
----

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| get_shared_record_details(***[param_instance](../parameter_map.md#parametermap)***) | To get the details of a record shared with other users. |
| share_record(***[request](share_records.md#bodywrapper)***) | To share a record with other users in the organization. |
| update_share_permissions(***[request](share_records.md#bodywrapper)***) | Update the sharing permissions of a record granted to users as Read-Write, Read-only, or grant full access. |
| revoke_shared_record | To revoke access to a shared record. |
----

### Inner Static Classes

| Class                                    |
| :--------------------------------------- |
| [GetSharedRecordDetailsParam](#getsharedrecorddetailsparam) |
----

[source](../../src/com/zoho/crm/api/share_records/share_records_operations.rb)

## SharedThrough

Structure representing the properties of the Shared Record.

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| module | The method to get the value of ***SharedThrough module_1*** |
| module=***[module_1](modules.md#module)*** | The method to set the value of ***SharedThrough module_1*** |
| id | The method to get the value of ***SharedThrough id*** |
| id=id | The method to set the value of ***SharedThrough id*** |
| entity_name | The method to get the value of ***SharedThrough entity_name*** |
| entity_name=entity_name | The method to set the value of ***SharedThrough entity_name*** |
----

[source](../../src/com/zoho/crm/api/share_records/shared_through.rb)

## APIException

Whenever the **API** returns an error response, an instance of [APIException](../../src/com/zoho/crm/api/share_records/api_exception.rb) is returned for all operations.

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

[source](../../src/com/zoho/crm/api/share_records/api_exception.rb)

## ResponseWrapper

After a successful **API** request, an instance of [ResponseWrapper](../../src/com/zoho/crm/api/share_records/response_wrapper.rb) is returned for **GET** operations.

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| share | The method to get the list of obtained ***ShareRecord*** instances. |
| share=***[share](share_records.md#sharerecord)*** | The method to set the list of obtained ***ShareRecord*** instances. |
| shareable_user | The method to get the list of obtained ***User*** instances. |
| shareable_user=***[shareable_user](users.md#user)*** | The method to set the list of obtained ***User*** instances. |
----

[source](../../src/com/zoho/crm/api/share_records/response_wrapper.rb)

## ShareRecord

Structure of Zoho CRM [ShareRecord](../../src/com/zoho/crm/api/share_records/share_record.rb).

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| share_related_records | The method to get the value of ***ShareRecord share_related_records*** |
| share_related_records=share_related_records | The method to set the value of ***ShareRecord share_related_records*** |
| shared_through | The method to get the value of ***ShareRecord shared_through*** |
| shared_through=***[shared_through](share_records.md#sharedthrough)*** | The method to set the value of ***ShareRecord shared_through*** |
| shared_time | The method to get the value of ***ShareRecord shared_time*** |
| shared_time=shared_time | The method to set the value of ***ShareRecord shared_time*** |
| permission | The method to get the value of ***ShareRecord permission*** |
| permission=permission | The method to set the value of ***ShareRecord permission*** |
| shared_by | The method to get the value of ***ShareRecord shared_by*** |
| shared_by=***[shared_by](users.md#user)*** | The method to set the value of ***ShareRecord shared_by*** |
| user | The method to get the value of ***ShareRecord user*** |
| user=***[user](users.md#user)*** | The method to set the value of ***ShareRecord user*** |
----

[source](../../src/com/zoho/crm/api/share_records/share_record.rb)

## DeleteActionWrapper

After a successful **API** request, an instance of [DeleteActionWrapper](../../src/com/zoho/crm/api/share_records/delete_action_wrapper.rb) is returned for **DELETE** operation

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| share | The method to get the value of ***DeleteActionWrapper share*** |
| share=***[share](../../src/com/zoho/crm/api/share_records/delete_action_response.rb)*** | The method to set the value of ***DeleteActionWrapper share*** |
----

[source](../../src/com/zoho/crm/api/share_records/delete_action_wrapper.rb)

## BodyWrapper

A structure that contains all possible keys of a single request.

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| share | The method to get the list of obtained ***ShareRecord*** instances. |
| share=***[share](share_records.md#sharerecord)*** | The method to set the list of obtained ***ShareRecord*** instances. |
----

[source](../../src/com/zoho/crm/api/share_records/body_wrapper.rb)

## ActionWrapper

After a successful **API** request, an instance of [ActionWrapper](../../src/com/zoho/crm/api/share_records/action_wrapper.rb) is returned for **POST**, **PUT** and **DELETE** operations

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| share | The method to get the list of obtained ***ActionResponse*** instances. |
| share=***[share](../../src/com/zoho/crm/api/share_records/action_response.rb)*** | The method to set the list of obtained ***ActionResponse*** instances. |
----

[source](../../src/com/zoho/crm/api/share_records/action_wrapper.rb)

## GetSharedRecordDetailsParam

Contains all possible parameters for the [Get SharedRecord Details operation](../../src/com/zoho/crm/api/share_records/share_records_operations.rb).

### Fields

| Field                      | Description                                        |
| :------------------------- | :------------------------------------------------- |
| sharedTo | Represents `sharedTo` parameter |
| view | Represents `view` parameter |
----
