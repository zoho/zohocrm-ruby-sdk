# Attachments

The Zoho CRM [Attachment API](https://www.zoho.com/crm/developer/docs/api/get-attachments.html) reference provides information about the possible operations on **Attachments**.

## Classes

| Class                 | Extends Classes |
| :-------------------- | :-------------- |
| [SuccessResponse](#successresponse) |  |
| [APIException](#apiexception) |  |
| [Attachment](#attachment) |  |
| [ActionWrapper](#actionwrapper) |  |
| [ResponseWrapper](#responsewrapper) |  |
| [FileBodyWrapper](#filebodywrapper) |  |
| [AttachmentsOperations](#attachmentsoperations) |  |

----

## SuccessResponse

After a successful **POST**, **PUT** or **DELETE** operation, an instance of [SuccessResponse](../../src/com/zoho/crm/api/attachments/success_response.rb) is returned.

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| code | The method to get the value of ***code*** key in  the **API** response |
| code=***[code](../util/choice.md#choice&lt;t>)*** | The method to set the value of ***code*** key in  the **API** response |
| details | The method to get the value of ***details*** key in  the **API** response |
| details=details | The method to set the value of ***details*** key in  the **API** response |
| message | The method to get the value of ***message*** key in  the **API** response |
| message=***[message](../util/choice.md#choice&lt;t>)*** | The method to set the value of ***message*** key in  the **API** response |
| status | The method to get the value of ***status*** key in  the **API** response |
| status=***[status](../util/choice.md#choice&lt;t>)*** | The method to set the value of ***status*** key in  the **API** response |
----

[source](../../src/com/zoho/crm/api/attachments/success_response.rb)

## APIException

Whenever the **API** returns an error response, an instance of [APIException](../../src/com/zoho/crm/api/attachments/api_exception.rb) is returned for all operations.

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

[source](../../src/com/zoho/crm/api/attachments/api_exception.rb)

## Attachment

Structure of Zoho CRM [Attachment](../../src/com/zoho/crm/api/attachments/attachment.rb)

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| owner | The method to get the value of ***Attachment owner*** |
| owner=***[owner](users.md#user)*** | The method to set the value of ***Attachment owner*** |
| modified_time | The method to get the value of ***Attachment modified_time*** |
| modified_time=modified_time | The method to set the value of ***Attachment modified_time*** |
| file_name | The method to get the value of ***Attachment file_name*** |
| file_name=file_name | The method to set the value of ***Attachment file_name*** |
| created_time | The method to get the value of ***Attachment created_time*** |
| created_time=created_time | The method to set the value of ***Attachment created_time*** |
| size | The method to get the value of ***Attachment size*** |
| size=size | The method to set the value of ***Attachment size*** |
| parent_id | The method to get the value of ***Attachment parent_id*** |
| parent_id=***[parent_id](record.md#record-1)*** | The method to set the value of ***Attachment parent_id*** |
| editable | The method to get the value of ***Attachment editable*** |
| editable=editable | The method to set the value of ***Attachment editable*** |
| file_id | The method to get the value of ***Attachment file_id*** |
| file_id=file_id | The method to set the value of ***Attachment file_id*** |
| type | The method to get the value of ***Attachment type*** |
| type=type | The method to set the value of ***Attachment type*** |
| se_module | The method to get the value of ***Attachment se_module*** |
| se_module=se_module | The method to set the value of ***Attachment se_module*** |
| modified_by | The method to get the value of ***Attachment modified_by*** |
| modified_by=***[modified_by](users.md#user)*** | The method to set the value of ***Attachment modified_by*** |
| state | The method to get the value of ***Attachment state*** |
| state=state | The method to set the value of ***Attachment state*** |
| id | The method to get the value of ***Attachment id*** |
| id=id | The method to set the value of ***Attachment id*** |
| created_by | The method to get the value of ***Attachment created_by*** |
| created_by=***[created_by](users.md#user)*** | The method to set the value of ***Attachment created_by*** |
| link_url | The method to get the value of ***Attachment link_url*** |
| link_url=link_url | The method to set the value of ***Attachment link_url*** |
| description | The method to get the value of ***Attachment description*** |
| description=description | The method to set the value of ***Attachment description*** |
| category | The method to get the value of ***Attachment category*** |
| category=category | The method to set the value of ***Attachment category*** |
----

[source](../../src/com/zoho/crm/api/attachments/attachment.rb)

## ActionWrapper

After a successful **API** request, and instance of [ActionWrapper](../../src/com/zoho/crm/api/attachments/action_wrapper.rb) is returned for **POST**, **PUT** and **DELETE** operations

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| data | The method to get the list of obtained ***ActionResponse*** instances. |
| data=***[data](../../src/com/zoho/crm/api/attachments/action_response.rb)*** | The method to set the list of obtained ***ActionResponse*** instances. |
----

[source](../../src/com/zoho/crm/api/attachments/action_wrapper.rb)

## ResponseWrapper

After a successful **API** request, and instance of [ResponseWrapper](../../src/com/zoho/crm/api/attachments/response_wrapper.rb) is returned for GET operations

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| data | The method to get the list of obtained ***Attachment*** instances. |
| data=***[data](attachments.md#attachment)*** | The method to set the list of obtained ***Attachment*** instances. |
| info | The method to get the value of ***ResponseWrapper info*** |
| info=***[info](record.md#info)*** | The method to set the value of ***ResponseWrapper info*** |
----

[source](../../src/com/zoho/crm/api/attachments/response_wrapper.rb)

## FileBodyWrapper

Serves as request for uploading attachment and response for downloading attachment operations.

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| file | The method to get the value of ***FileBodyWrapper file*** |
| file=***[file](../util/stream_wrapper.md#streamwrapper)*** | The method to set the value of ***FileBodyWrapper file*** |
----

[source](../../src/com/zoho/crm/api/attachments/file_body_wrapper.rb)

## AttachmentsOperations

Contains methods for all possible [Attachment operations](../../src/com/zoho/crm/api/attachments/attachments_operations.rb).

### Constructors

| Constructor                                                   | Description                                                                     |
| :------------------------------------------------------------ | :------------------------------------------------------------------------------ |
| initialize(record_id, module_api_name) |  Creates a ***AttachmentsOperations*** class instance with the ***recordId*** and ***moduleAPIName***. |
----

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| download_attachment(id) | To download an attachment that was uploaded to a record. |
| delete_attachment(id) | To delete an attachment that was added to a record. |
| get_attachments | To fetch the list of attachments of a record. |
| upload_attachment(***[request](attachments.md#filebodywrapper)***) | To upload attachments to a record. |
| upload_link_attachment(***[param_instance](../parameter_map.md#parametermap)***) | To upload a link as an attachment to a record. |
| delete_attachments(***[param_instance](../parameter_map.md#parametermap)***) | To delete the attachments that were added to a record. |
----

### Inner Static Classes

| Class                                    |
| :--------------------------------------- |
| [UploadLinkAttachmentParam](#uploadlinkattachmentparam) |
| [DeleteAttachmentsParam](#deleteattachmentsparam) |
----

[source](../../src/com/zoho/crm/api/attachments/attachments_operations.rb)

## UploadLinkAttachmentParam

Contains all possible parameters for the [Upload Link as attachment operation](../../src/com/zoho/crm/api/attachments/attachments_operations.rb).

### Fields

| Field                      | Description                                        |
| :------------------------- | :------------------------------------------------- |
| attachmentUrl | Represents `attachmentUrl` parameter |
----

## DeleteAttachmentsParam

Contains all possible parameters for the [Delete Attachments operation](../../src/com/zoho/crm/api/attachments/attachments_operations.rb).

### Fields

| Field                      | Description                                        |
| :------------------------- | :------------------------------------------------- |
| ids | Represents `ids` parameter |
----
