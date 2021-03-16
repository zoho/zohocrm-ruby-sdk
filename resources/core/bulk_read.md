# BulkRead

The Zoho CRM [BulkRead API](https://www.zoho.com/crm/developer/docs/api/bulk-read/overview.html) reference provides information about the possible operations on **BulkRead**.

## Classes

| Class                 | Extends Classes |
| :-------------------- | :-------------- |
| [Criteria](#criteria) |  |
| [Query](#query) |  |
| [RequestWrapper](#requestwrapper) |  |
| [SuccessResponse](#successresponse) |  |
| [JobDetail](#jobdetail) |  |
| [Result](#result) |  |
| [BulkReadOperations](#bulkreadoperations) |  |
| [CallBack](#callback) |  |
| [ResponseWrapper](#responsewrapper) |  |
| [APIException](#apiexception) |  |
| [ActionWrapper](#actionwrapper) |  |
| [FileBodyWrapper](#filebodywrapper) |  |

----

## Criteria

The structure represents the condition to filter records.

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| api_name | The method to get the value of ***Criteria api_name*** |
| api_name=api_name | The method to set the value of ***Criteria api_name*** |
| value | The method to get the value of ***Criteria value*** |
| value=value | The method to set the value of ***Criteria value*** |
| group_operator | The method to get the value of ***Criteria group_operator*** |
| group_operator=***[group_operator](../util/choice.md#choice&lt;t>)*** | The method to set the value of ***Criteria group_operator*** |
| group | The method to get the list of obtained ***Criteria*** instances. |
| group=***[group](bulk_read.md#criteria)*** | The method to set the list of obtained ***Criteria*** instances. |
| comparator | The method to get the value of ***Criteria comparator*** |
| comparator=***[comparator](../util/choice.md#choice&lt;t>)*** | The method to set the value of ***Criteria comparator*** |
----

[source](../../src/com/zoho/crm/api/bulk_read/criteria.rb)

## Query

The structure containing the query to retrieve the required records.

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| module | The method to get the value of ***Query module_1*** |
| module=module_1 | The method to set the value of ***Query module_1*** |
| cvid | The method to get the value of ***Query cvid*** |
| cvid=cvid | The method to set the value of ***Query cvid*** |
| fields | The method to get the value of ***Query fields*** |
| fields=fields | The method to set the value of ***Query fields*** |
| page | The method to get the value of ***Query page*** |
| page=page | The method to set the value of ***Query page*** |
| criteria | The method to get the value of ***Query criteria*** |
| criteria=***[criteria](bulk_read.md#criteria)*** | The method to set the value of ***Query criteria*** |
----

[source](../../src/com/zoho/crm/api/bulk_read/query.rb)

## RequestWrapper

A structure that contains all possible keys of a single request.

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| callback | The method to get the value of ***RequestWrapper callback*** |
| callback=***[callback](bulk_read.md#callback)*** | The method to set the value of ***RequestWrapper callback*** |
| query | The method to get the value of ***RequestWrapper query*** |
| query=***[query](bulk_read.md#query)*** | The method to set the value of ***RequestWrapper query*** |
| file_type | The method to get the value of ***RequestWrapper file_type*** |
| file_type=***[file_type](../util/choice.md#choice&lt;t>)*** | The method to set the value of ***RequestWrapper file_type*** |
----

[source](../../src/com/zoho/crm/api/bulk_read/request_wrapper.rb)

## SuccessResponse

After a successful **POST**, **PUT** or **DELETE** operation, an instance of [SuccessResponse](../../src/com/zoho/crm/api/bulk_read/success_response.md) is returned.

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

[source](../../src/com/zoho/crm/api/bulk_read/success_response.rb)

## JobDetail

Structure of Zoho CRM [JobDetail](../../src/com/zoho/crm/api/bulk_read/job_detail.md).

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| id | The method to get the value of ***JobDetail id*** |
| id=id | The method to set the value of ***JobDetail id*** |
| operation | The method to get the value of ***JobDetail operation*** |
| operation=operation | The method to set the value of ***JobDetail operation*** |
| state | The method to get the value of ***JobDetail state*** |
| state=***[state](../util/choice.md#choice&lt;t>)*** | The method to set the value of ***JobDetail state*** |
| query | The method to get the value of ***JobDetail query*** |
| query=***[query](bulk_read.md#query)*** | The method to set the value of ***JobDetail query*** |
| created_by | The method to get the value of ***JobDetail created_by*** |
| created_by=***[created_by](users.md#user)*** | The method to set the value of ***JobDetail created_by*** |
| created_time | The method to get the value of ***JobDetail created_time*** |
| created_time=created_time | The method to set the value of ***JobDetail created_time*** |
| result | The method to get the value of ***JobDetail result*** |
| result=***[result](bulk_read.md#result)*** | The method to set the value of ***JobDetail result*** |
| file_type | The method to get the value of ***JobDetail file_type*** |
| file_type=file_type | The method to set the value of ***JobDetail file_type*** |
----

[source](../../src/com/zoho/crm/api/bulk_read/job_detail.rb)

## Result

Structure represents the result of a BulkRead job.

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| page | The method to get the value of ***Result page*** |
| page=page | The method to set the value of ***Result page*** |
| count | The method to get the value of ***Result count*** |
| count=count | The method to set the value of ***Result count*** |
| download_url | The method to get the value of ***Result download_url*** |
| download_url=download_url | The method to set the value of ***Result download_url*** |
| per_page | The method to get the value of ***Result per_page*** |
| per_page=per_page | The method to set the value of ***Result per_page*** |
| more_records | The method to get the value of ***Result more_records*** |
| more_records=more_records | The method to set the value of ***Result more_records*** |
----

[source](../../src/com/zoho/crm/api/bulk_read/result.rb)

## BulkReadOperations

Contains methods for all possible [BulkRead operations](../../src/com/zoho/crm/api/bulk_read/bulk_read_operations.md).

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| get_bulk_read_job_details(job_id) |  |
| download_result(job_id) |  |
| create_bulk_read_job(***[request](bulk_read.md#requestwrapper)***) |  |
----

[source](../../src/com/zoho/crm/api/bulk_read/bulk_read_operations.rb)

## CallBack

Structure containing the URL where the BulkRead Job details are posted upon completion.

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| url | The method to get the value of ***CallBack url*** |
| url=url | The method to set the value of ***CallBack url*** |
| method | The method to get the value of ***CallBack method*** |
| method=***[method](../util/choice.md#choice&lt;t>)*** | The method to set the value of ***CallBack method*** |
----

[source](../../src/com/zoho/crm/api/bulk_read/call_back.rb)

## ResponseWrapper

After a successful **API** request, an instance of [ResponseWrapper](../../src/com/zoho/crm/api/bulk_read/response_wrapper.md) is returned for GET operations

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| data | The method to get the list of obtained ***JobDetail*** instances. |
| data=***[data](bulk_read.md#jobdetail)*** | The method to set the list of obtained ***JobDetail*** instances. |
----

[source](../../src/com/zoho/crm/api/bulk_read/response_wrapper.rb)

## APIException

Whenever the **API** returns an error response, an instance of [APIException](../../src/com/zoho/crm/api/bulk_read/api_exception.md) is returned for all operations.

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

[source](../../src/com/zoho/crm/api/bulk_read/api_exception.rb)

## ActionWrapper

After a successful **API** request, an instance of [ActionWrapper](../../src/com/zoho/crm/api/bulk_read/action_wrapper.md) is returned for **POST**, **PUT** and **DELETE** operations

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| data | The method to get the list of obtained ***ActionResponse*** instances. |
| data=***[data](../../src/com/zoho/crm/api/bulk_read/action_response.rb)*** | The method to set the list of obtained ***ActionResponse*** instances. |
| info | The method to get the value of ***ActionWrapper info*** |
| info=info | The method to set the value of ***ActionWrapper info*** |
----

[source](../../src/com/zoho/crm/api/bulk_read/action_wrapper.rb)

## FileBodyWrapper

Serves as the response for downloading the result of bulk read job.

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| file | The method to get the value of ***FileBodyWrapper file*** |
| file=***[file](../util/stream_wrapper.md#streamwrapper)*** | The method to set the value of ***FileBodyWrapper file*** |
----

[source](../../src/com/zoho/crm/api/bulk_read/file_body_wrapper.rb)
