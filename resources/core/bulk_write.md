# BulkWrite

The Zoho CRM [BulkWrite API](https://www.zoho.com/crm/developer/docs/api/bulk-write/overview.html) reference provides information about the possible operations on **BulkWrite**.

## Classes

| Class                 | Extends Classes |
| :-------------------- | :-------------- |
| [CallBack](#callback) |  |
| [SuccessResponse](#successresponse) |  |
| [RequestWrapper](#requestwrapper) |  |
| [APIException](#apiexception) |  |
| [BulkWriteResponse](#bulkwriteresponse) |  |
| [File](#file) |  |
| [Resource](#resource) |  |
| [BulkWriteOperations](#bulkwriteoperations) |  |
| [FieldMapping](#fieldmapping) |  |
| [FileBodyWrapper](#filebodywrapper) |  |
| [Result](#result) |  |

----

## CallBack

Structure containing the URL where the BulkWrite Job details are posted upon completion.

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| url | The method to get the value of ***CallBack url*** |
| url=url | The method to set the value of ***CallBack url*** |
| method | The method to get the value of ***CallBack method*** |
| method=***[method](../util/choice.md#choice&lt;t>)*** | The method to set the value of ***CallBack method*** |
----

[source](../../src/com/zoho/crm/api/bulk_write/call_back.rb)

## SuccessResponse

After a successful **POST**, **PUT** or **DELETE** operation, an instance of [SuccessResponse](../../src/com/zoho/crm/api/bulk_write/success_response.rb) is returned.

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

[source](../../src/com/zoho/crm/api/bulk_write/success_response.rb)

## RequestWrapper

After a successful **API** request, an instance of [RequestWrapper](../../src/com/zoho/crm/api/bulk_write/request_wrapper.rb) is returned for **POST**, **PUT** and **DELETE** operations

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| character_encoding | The method to get the value of ***RequestWrapper character_encoding*** |
| character_encoding=character_encoding | The method to set the value of ***RequestWrapper character_encoding*** |
| operation | The method to get the value of ***RequestWrapper operation*** |
| operation=***[operation](../util/choice.md#choice&lt;t>)*** | The method to set the value of ***RequestWrapper operation*** |
| callback | The method to get the value of ***RequestWrapper callback*** |
| callback=***[callback](bulk_write.md#callback)*** | The method to set the value of ***RequestWrapper callback*** |
| resource | The method to get the list of obtained ***Resource*** instances. |
| resource=***[resource](bulk_write.md#resource)*** | The method to set the list of obtained ***Resource*** instances. |
----

[source](../../src/com/zoho/crm/api/bulk_write/request_wrapper.rb)

## APIException

Whenever the **API** returns an error response, an instance of [APIException](../../src/com/zoho/crm/api/bulk_write/api_exception.rb) is returned for all operations.

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| code | The method to get the value of ***code*** key in  the **API** response |
| code=***[code](../util/choice.md#choice&lt;t>)*** | The method to set the value of ***code*** key in  the **API** response |
| message | The method to get the value of ***message*** key in  the **API** response |
| message=***[message](../util/choice.md#choice&lt;t>)*** | The method to set the value of ***message*** key in  the **API** response |
| status | The method to get the value of ***status*** key in  the **API** response |
| status=***[status](../util/choice.md#choice&lt;t>)*** | The method to set the value of ***status*** key in  the **API** response |
| details | The method to get the value of ***details*** key in  the **API** response |
| details=details | The method to set the value of ***details*** key in  the **API** response |
| error_message | The method to get the value of ***error_message*** key in  the **API** response |
| error_message=***[error_message](../util/choice.md#choice&lt;t>)*** | The method to set the value of ***error_message*** key in  the **API** response |
| error_code | The method to get the value of ***error_code*** key in  the **API** response |
| error_code=error_code | The method to set the value of ***error_code*** key in  the **API** response |
| x_error | The method to get the value of ***x_error*** key in  the **API** response |
| x_error=***[x_error](../util/choice.md#choice&lt;t>)*** | The method to set the value of ***x_error*** key in  the **API** response |
| info | The method to get the value of ***info*** key in  the **API** response |
| info=***[info](../util/choice.md#choice&lt;t>)*** | The method to set the value of ***info*** key in  the **API** response |
| x_info | The method to get the value of ***x_info*** key in  the **API** response |
| x_info=***[x_info](../util/choice.md#choice&lt;t>)*** | The method to set the value of ***x_info*** key in  the **API** response |
| http_status | The method to get the value of ***http_status*** key in  the **API** response |
| http_status=http_status | The method to set the value of ***http_status*** key in  the **API** response |
----

[source](../../src/com/zoho/crm/api/bulk_write/api_exception.rb)

## BulkWriteResponse

Structure of Zoho CRM [BulkWriteResponse](../../src/com/zoho/crm/api/bulk_write/bulk_write_response.rb).

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| status | The method to get the value of ***BulkWriteResponse status*** |
| status=status | The method to set the value of ***BulkWriteResponse status*** |
| character_encoding | The method to get the value of ***BulkWriteResponse character_encoding*** |
| character_encoding=character_encoding | The method to set the value of ***BulkWriteResponse character_encoding*** |
| resource | The method to get the list of obtained ***Resource*** instances. |
| resource=***[resource](bulk_write.md#resource)*** | The method to set the list of obtained ***Resource*** instances. |
| id | The method to get the value of ***BulkWriteResponse id*** |
| id=id | The method to set the value of ***BulkWriteResponse id*** |
| callback | The method to get the value of ***BulkWriteResponse callback*** |
| callback=***[callback](bulk_write.md#callback)*** | The method to set the value of ***BulkWriteResponse callback*** |
| result | The method to get the value of ***BulkWriteResponse result*** |
| result=***[result](bulk_write.md#result)*** | The method to set the value of ***BulkWriteResponse result*** |
| created_by | The method to get the value of ***BulkWriteResponse created_by*** |
| created_by=***[created_by](users.md#user)*** | The method to set the value of ***BulkWriteResponse created_by*** |
| operation | The method to get the value of ***BulkWriteResponse operation*** |
| operation=operation | The method to set the value of ***BulkWriteResponse operation*** |
| created_time | The method to get the value of ***BulkWriteResponse created_time*** |
| created_time=created_time | The method to set the value of ***BulkWriteResponse created_time*** |
----

[source](../../src/com/zoho/crm/api/bulk_write/bulk_write_response.rb)

## File

Structure representing the status of the data provided in the file.

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| status | The method to get the value of ***File status*** |
| status=***[status](../util/choice.md#choice&lt;t>)*** | The method to set the value of ***File status*** |
| name | The method to get the value of ***File name*** |
| name=name | The method to set the value of ***File name*** |
| added_count | The method to get the value of ***File added_count*** |
| added_count=added_count | The method to set the value of ***File added_count*** |
| skipped_count | The method to get the value of ***File skipped_count*** |
| skipped_count=skipped_count | The method to set the value of ***File skipped_count*** |
| updated_count | The method to get the value of ***File updated_count*** |
| updated_count=updated_count | The method to set the value of ***File updated_count*** |
| total_count | The method to get the value of ***File total_count*** |
| total_count=total_count | The method to set the value of ***File total_count*** |
----

[source](../../src/com/zoho/crm/api/bulk_write/file.rb)

## Resource

Structure representing the properties of the data present in the file that serves as the request for creating a BulkWrite job and response for getting BulkWrite Job Details operation.

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| status | The method to get the value of ***Resource status*** |
| status=***[status](../util/choice.md#choice&lt;t>)*** | The method to set the value of ***Resource status*** |
| type | The method to get the value of ***Resource type*** |
| type=***[type](../util/choice.md#choice&lt;t>)*** | The method to set the value of ***Resource type*** |
| module | The method to get the value of ***Resource module_1*** |
| module=module_1 | The method to set the value of ***Resource module_1*** |
| file_id | The method to get the value of ***Resource file_id*** |
| file_id=file_id | The method to set the value of ***Resource file_id*** |
| ignore_empty | The method to get the value of ***Resource ignore_empty*** |
| ignore_empty=ignore_empty | The method to set the value of ***Resource ignore_empty*** |
| find_by | The method to get the value of ***Resource find_by*** |
| find_by=find_by | The method to set the value of ***Resource find_by*** |
| field_mappings | The method to get the list of obtained ***FieldMapping*** instances. |
| field_mappings=***[field_mappings](bulk_write.md#fieldmapping)*** | The method to set the list of obtained ***FieldMapping*** instances. |
| file | The method to get the value of ***Resource file*** |
| file=***[file](bulk_write.md#file)*** | The method to set the value of ***Resource file*** |
----

[source](../../src/com/zoho/crm/api/bulk_write/resource.rb)

## BulkWriteOperations

Contains methods for all possible [BulkWrite operations](../../src/com/zoho/crm/api/bulk_write/bulk_write_operations.rb).

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| upload_file(***[request](bulk_write.md#filebodywrapper)***, ***[header_instance](../header_map.md#headermap)***) | To upload a CSV file in ZIP format. The response contains the "file_id". Use this ID while making the bulk write request. |
| create_bulk_write_job(***[request](bulk_write.md#requestwrapper)***) | To create a bulk write job to insert, update, or upsert records. The response contains the "job_id". Use this ID while getting the status of the scheduled bulk write job. |
| get_bulk_write_job_details(job_id) | To know the status of the bulk write job scheduled previously. |
| download_bulk_write_result(download_url) | To download the result of the bulk read job. The response contains a zip file. Extract it to get the CSV or ICS file depending on the "file_type" you specified while creating the bulk read job. |
----

### Inner Static Classes

| Class                                    |
| :--------------------------------------- |
| [UploadFileHeader](#uploadfileheader) |
----

[source](../../src/com/zoho/crm/api/bulk_write/bulk_write_operations.rb)

## FieldMapping

Structure representing the properties of field data in the file.

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| api_name | The method to get the value of ***FieldMapping api_name*** |
| api_name=api_name | The method to set the value of ***FieldMapping api_name*** |
| index | The method to get the value of ***FieldMapping index*** |
| index=index | The method to set the value of ***FieldMapping index*** |
| format | The method to get the value of ***FieldMapping format*** |
| format=format | The method to set the value of ***FieldMapping format*** |
| find_by | The method to get the value of ***FieldMapping find_by*** |
| find_by=find_by | The method to set the value of ***FieldMapping find_by*** |
| default_value | The method to get the value of ***FieldMapping default_value*** |
| default_value=default_value | The method to set the value of ***FieldMapping default_value*** |
| module | The method to get the value of ***FieldMapping module_1*** |
| module=module_1 | The method to set the value of ***FieldMapping module_1*** |
----

[source](../../src/com/zoho/crm/api/bulk_write/field_mapping.rb)

## FileBodyWrapper

Serves as the request for uploading the file and response for downloading the result of a BulkWrite operation.

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| file | The method to get the value of ***FileBodyWrapper file*** |
| file=***[file](../util/stream_wrapper.md#streamwrapper)*** | The method to set the value of ***FileBodyWrapper file*** |
----

[source](../../src/com/zoho/crm/api/bulk_write/file_body_wrapper.rb)

## Result

Structure containing the download URL that contains the result of the BulkWrite operation.

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| download_url | The method to get the value of ***Result download_url*** |
| download_url=download_url | The method to set the value of ***Result download_url*** |
----

[source](../../src/com/zoho/crm/api/bulk_write/result.rb)

## UploadFileHeader

Contains all possible headers for [Upload file operation](../../src/com/zoho/crm/api/bulk_write/bulk_write_operations.rb).

### Fields

| Field                      | Description                                        |
| :------------------------- | :------------------------------------------------- |
| feature | Represents `feature` header |
| X_crm_org | Represents `X-CRM-ORG` header |
----
