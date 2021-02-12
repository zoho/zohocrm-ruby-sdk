# Files

The Zoho CRM [Files API](https://www.zoho.com/crm/developer/docs/api/upload-files-to-zfs.html) reference provides information about the possible operations on **Files**.

## Classes

| Class                 | Extends Classes |
| :-------------------- | :-------------- |
| [BodyWrapper](#bodywrapper) |  |
| [SuccessResponse](#successresponse) |  |
| [ActionWrapper](#actionwrapper) |  |
| [APIException](#apiexception) |  |
| [FileOperations](#fileoperations) |  |
| [FileBodyWrapper](#filebodywrapper) |  |

----

## BodyWrapper

A structure that contains all possible keys of a single request.

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| file | The method to get the list of obtained ***StreamWrapper*** instances. |
| file=***[file](../util/stream_wrapper.md#streamwrapper)*** | The method to set the list of obtained ***StreamWrapper*** instances. |
----

[source](../../src/com/zoho/crm/api/files/body_wrapper.rb)

## SuccessResponse

After a successful **POST**, **PUT** or **DELETE** operation, an instance of [SuccessResponse](../../src/com/zoho/crm/api/files/success_response.rb) is returned.

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

[source](../../src/com/zoho/crm/api/files/success_response.rb)

## ActionWrapper

After a successful **API** request, an instance of [ActionWrapper](../../src/com/zoho/crm/api/files/action_wrapper.rb) is returned for **POST**, **PUT** and **DELETE** operations

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| data | The method to get the list of obtained ***ActionResponse*** instances. |
| data=***[data](../../src/com/zoho/crm/api/files/action_response.rb)*** | The method to set the list of obtained ***ActionResponse*** instances. |
----

[source](../../src/com/zoho/crm/api/files/action_wrapper.rb)

## APIException

Whenever the **API** returns an error response, an instance of [APIException](../../src/com/zoho/crm/api/files/api_exception.rb) is returned for all operations.

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

[source](../../src/com/zoho/crm/api/files/api_exception.rb)

## FileOperations

Contains methods for all possible [File operations](../../src/com/zoho/crm/api/files/file_operations.rb).

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| upload_file(***[request](files.md#bodywrapper)***, ***[param_instance](../parameter_map.md#parametermap)***) | To upload a file and get the encrypted ID. |
| get_file(***[param_instance](../parameter_map.md#parametermap)***) | To get the uploaded file through its encrypted ID. |
----

### Inner Static Classes

| Class                                    |
| :--------------------------------------- |
| [UploadFileParam](#uploadfileparam) |
| [GetFileParam](#getfileparam) |
----

[source](../../src/com/zoho/crm/api/files/file_operations.rb)

## FileBodyWrapper

Serves as response for downloading file operation.

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| file | The method to get the value of ***FileBodyWrapper file*** |
| file=***[file](../util/stream_wrapper.md#streamwrapper)*** | The method to set the value of ***FileBodyWrapper file*** |
----

[source](../../src/com/zoho/crm/api/files/file_body_wrapper.rb)

## UploadFileParam

Contains all possible parameters for the [Upload File operation](../../src/com/zoho/crm/api/files/file_operations.rb).

### Fields

| Field                      | Description                                        |
| :------------------------- | :------------------------------------------------- |
| type | Represents `type` parameter |
----

## GetFileParam

### Fields

| Field                      | Description                                        |
| :------------------------- | :------------------------------------------------- |
| id | Represents `id` parameter |
----
