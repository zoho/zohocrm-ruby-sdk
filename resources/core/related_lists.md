# RelatedLists

The Zoho CRM [RelatedLists Meta Data API](https://www.zoho.com/crm/developer/docs/api/related-list-meta.html) reference provides information about the possible operations on **RelatedLists**.

## Classes

| Class                 | Extends Classes |
| :-------------------- | :-------------- |
| [ResponseWrapper](#responsewrapper) |  |
| [RelatedList](#relatedlist) |  |
| [RelatedListsOperations](#relatedlistsoperations) |  |
| [APIException](#apiexception) |  |

----

## ResponseWrapper

After a successful **API** request, an instance of [ResponseWrapper](../../src/com/zoho/crm/api/related_lists/response_wrapper.rb) is returned for GET operations.

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| related_lists | The method to get the list of obtained ***RelatedList*** instances. |
| related_lists=***[related_lists](related_lists.md#relatedlist)*** | The method to set the list of obtained ***RelatedList*** instances. |
----

[source](../../src/com/zoho/crm/api/related_lists/response_wrapper.rb)

## RelatedList

Structure of Zoho CRM [RelatedList](../../src/com/zoho/crm/api/related_lists/related_list.rb).

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| id | The method to get the value of ***RelatedList id*** |
| id=id | The method to set the value of ***RelatedList id*** |
| sequence_number | The method to get the value of ***RelatedList sequence_number*** |
| sequence_number=sequence_number | The method to set the value of ***RelatedList sequence_number*** |
| display_label | The method to get the value of ***RelatedList display_label*** |
| display_label=display_label | The method to set the value of ***RelatedList display_label*** |
| api_name | The method to get the value of ***RelatedList api_name*** |
| api_name=api_name | The method to set the value of ***RelatedList api_name*** |
| module | The method to get the value of ***RelatedList module_1*** |
| module=module_1 | The method to set the value of ***RelatedList module_1*** |
| name | The method to get the value of ***RelatedList name*** |
| name=name | The method to set the value of ***RelatedList name*** |
| action | The method to get the value of ***RelatedList action*** |
| action=action | The method to set the value of ***RelatedList action*** |
| href | The method to get the value of ***RelatedList href*** |
| href=href | The method to set the value of ***RelatedList href*** |
| type | The method to get the value of ***RelatedList type*** |
| type=type | The method to set the value of ***RelatedList type*** |
| connectedmodule | The method to get the value of ***RelatedList connectedmodule*** |
| connectedmodule=connectedmodule | The method to set the value of ***RelatedList connectedmodule*** |
| linkingmodule | The method to get the value of ***RelatedList linkingmodule*** |
| linkingmodule=linkingmodule | The method to set the value of ***RelatedList linkingmodule*** |
----

[source](../../src/com/zoho/crm/api/related_lists/related_list.rb)

## RelatedListsOperations

Contains methods for all possible [RelatedLists operations](../../src/com/zoho/crm/api/related_lists/related_lists_operations.rb).

### Constructors

| Constructor                                                   | Description                                                                     |
| :------------------------------------------------------------ | :------------------------------------------------------------------------------ |
| initialize(module_1) | Creates a ***RelatedListsOperations*** class instance with the ***moduleAPIName***. |
----

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| get_related_lists | To get the details of all the related lists of a module. |
| get_related_list(id) | To get the details of a specific related list of a module. |
----

[source](../../src/com/zoho/crm/api/related_lists/related_lists_operations.rb)

## APIException

Whenever the **API** returns an error response, an instance of [APIException](../../src/com/zoho/crm/api/related_lists/api_exception.rb) is returned for all operations.

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

[source](../../src/com/zoho/crm/api/related_lists/api_exception.rb)
