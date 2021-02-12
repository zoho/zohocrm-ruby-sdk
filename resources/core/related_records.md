# RelatedRecords

The Zoho CRM [RelatedRecords API](https://www.zoho.com/crm/developer/docs/api/get-related-records.html) reference provides information about the possible operations on **RelatedRecords**.

## Classes

| Class                 | Extends Classes |
| :-------------------- | :-------------- |
| [APIException](#apiexception) |  |
| [SuccessResponse](#successresponse) |  |
| [ActionWrapper](#actionwrapper) |  |
| [RelatedRecordsOperations](#relatedrecordsoperations) |  |
| [ResponseWrapper](#responsewrapper) |  |
| [FileBodyWrapper](#filebodywrapper) |  |
| [BodyWrapper](#bodywrapper) |  |

----

## APIException

Whenever the **API** returns an error response, an instance of [APIException](../../src/com/zoho/crm/api/related_records/api_exception.rb) is returned for all operations.

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

[source](../../src/com/zoho/crm/api/related_records/api_exception.rb)

## SuccessResponse

After a successful **POST**, **PUT** or **DELETE** operation, an instance of [SuccessResponse](../../src/com/zoho/crm/api/related_records/success_response.rb) is returned.

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

[source](../../src/com/zoho/crm/api/related_records/success_response.rb)

## ActionWrapper

After a successful **API** request, an instance of [ActionWrapper](../../src/com/zoho/crm/api/related_records/action_wrapper.rb) is returned for **POST**, **PUT** and **DELETE** operations.

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| data | The method to get the list of obtained ***ActionResponse*** instances. |
| data=***[data](../../src/com/zoho/crm/api/related_records/action_response.rb)*** | The method to set the list of obtained ***ActionResponse*** instances. |
----

[source](../../src/com/zoho/crm/api/related_records/action_wrapper.rb)

## RelatedRecordsOperations

Contains methods for all possible [RelatedRecords operations](../../src/com/zoho/crm/api/related_records/related_records_operations.rb).

### Constructors

| Constructor                                                   | Description                                                                     |
| :------------------------------------------------------------ | :------------------------------------------------------------------------------ |
| initialize(module_api_name, record_id, related_list_api_name) |  Creates a ***RelatedRecordsOperations*** class instance with the ***moduleAPIName***, ***recordId*** and ***relatedListAPIName***. |
----

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| get_related_records(***[param_instance](../parameter_map.md#parametermap)***, ***[header_instance](../header_map.md#headermap)***) | To get the list of records from the related list of a module. |
| update_related_records(***[request](related_records.md#bodywrapper)***) | To update the association/relation between the records. |
| delink_records(***[param_instance](../parameter_map.md#parametermap)***) | To delete the association between the records. |
| get_related_record(***[header_instance](../header_map.md#headermap)***, related_record_id) | To get the records from a specific related list of a module. |
| update_related_record(***[request](related_records.md#bodywrapper)***, related_record_id) | To update the details of a specific record of a related list in a module. |
| delink_record(related_record_id) | To delete a specific record from the related list of a module. |
----

### Inner Static Classes

| Class                                    |
| :--------------------------------------- |
| [GetRelatedRecordsParam](#getrelatedrecordsparam) |
| [GetRelatedRecordsHeader](#getrelatedrecordsheader) |
| [DelinkRecordsParam](#delinkrecordsparam) |
| [GetRelatedRecordHeader](#getrelatedrecordheader) |
----

[source](../../src/com/zoho/crm/api/related_records/related_records_operations.rb)

## ResponseWrapper

After a successful **API** request, an instance of [ResponseWrapper](../../src/com/zoho/crm/api/related_records/response_wrapper.rb) is returned for GET operations

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| data | The method to get the list of obtained ***Record*** instances. |
| data=***[data](record.md#record-1)*** | The method to set the list of obtained ***Record*** instances. |
| info | The method to get the value of ***ResponseWrapper info*** |
| info=***[info](record.md#info)*** | The method to set the value of ***ResponseWrapper info*** |
----

[source](../../src/com/zoho/crm/api/related_records/response_wrapper.rb)

## FileBodyWrapper

Serves as the response for the downloading Attachment operation.

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| file | The method to get the value of ***FileBodyWrapper file*** |
| file=***[file](../util/stream_wrapper.md#streamwrapper)*** | The method to set the value of ***FileBodyWrapper file*** |
----

[source](../../src/com/zoho/crm/api/related_records/file_body_wrapper.rb)

## BodyWrapper

A structure that contains all possible keys of a single request.

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| data | The method to get the list of obtained ***Record*** instances. |
| data=***[data](record.md#record-1)*** | The method to set the list of obtained ***Record*** instances. |
----

[source](../../src/com/zoho/crm/api/related_records/body_wrapper.rb)

## GetRelatedRecordsParam

Contains all possible parameters for the [GetRelatedRecords operation](../../src/com/zoho/crm/api/related_records/related_records_operations.rb).

### Fields

| Field                      | Description                                        |
| :------------------------- | :------------------------------------------------- |
| page | Represents `page` parameter |
| per_page | Represents `per_page` parameter |
----

## GetRelatedRecordsHeader

Contains all possible headers for the [GetRelatedRecords operation](../../src/com/zoho/crm/api/related_records/related_records_operations.rb).

### Fields

| Field                      | Description                                        |
| :------------------------- | :------------------------------------------------- |
| If_Modified_Since | Represents `If-Modified-Since` parameter |
----

## DelinkRecordsParam

Contains all possible parameters for the [DelinkRecords operation](../../src/com/zoho/crm/api/related_records/related_records_operations.rb).

### Fields

| Field                      | Description                                        |
| :------------------------- | :------------------------------------------------- |
| ids | Represents `ids` parameter |
----

## GetRelatedRecordHeader

Contains all possible headers for the [GetRelatedRecord operation](../../src/com/zoho/crm/api/related_records/related_records_operations.rb).

### Fields

| Field                      | Description                                        |
| :------------------------- | :------------------------------------------------- |
| If_Modified_Since | Represents `If-Modified-Since` parameter |
----
