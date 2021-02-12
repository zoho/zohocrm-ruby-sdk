# Query

The Zoho CRM [CRM Object Query Language(COQL) API](https://www.zoho.com/crm/developer/docs/api/COQL-Overview.html) reference provides information about the possible operations on **Query**.

## Classes

| Class                 | Extends Classes |
| :-------------------- | :-------------- |
| [ResponseWrapper](#responsewrapper) |  |
| [QueryOperations](#queryoperations) |  |
| [BodyWrapper](#bodywrapper) |  |
| [APIException](#apiexception) |  |

----

## ResponseWrapper

After a successful **API** request, an instance of [ResponseWrapper](../../src/com/zoho/crm/api/query/response_wrapper.rb) is returned for GET operations.

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| data | The method to get the list of obtained ***Record*** instances. |
| data=***[data](record.md#record-1)*** | The method to set the list of obtained ***Record*** instances. |
| info | The method to get the value of ***ResponseWrapper info*** |
| info=***[info](record.md#info)*** | The method to set the value of ***ResponseWrapper info*** |
----

[source](../../src/com/zoho/crm/api/query/response_wrapper.rb)

## QueryOperations

Contains methods for all possible [Query operations](../../src/com/zoho/crm/api/query/query_operations.rb).

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| get_records(***[request](query.md#bodywrapper)***) | To get records from the module through a COQL query. |
----

[source](../../src/com/zoho/crm/api/query/query_operations.rb)

## BodyWrapper

A structure that contains all possible keys of a single request.

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| select_query | The method to get the value of ***BodyWrapper select_query*** |
| select_query=select_query | The method to set the value of ***BodyWrapper select_query*** |
----

[source](../../src/com/zoho/crm/api/query/body_wrapper.rb)

## APIException

Whenever the **API** returns an error response, an instance of [APIException](../../src/com/zoho/crm/api/query/api_exception.rb) is returned for all operations.

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

[source](../../src/com/zoho/crm/api/query/api_exception.rb)
