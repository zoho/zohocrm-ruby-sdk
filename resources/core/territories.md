# Territories

The Zoho CRM [Territories API](https://www.zoho.com/crm/developer/docs/api/territories.html) reference provides information about the possible operations on **Territories**.

## Classes

| Class                 | Extends Classes |
| :-------------------- | :-------------- |
| [Territory](#territory) |  |
| [TerritoriesOperations](#territoriesoperations) |  |
| [APIException](#apiexception) |  |
| [ResponseWrapper](#responsewrapper) |  |

----

## Territory

Structure of Zoho CRM [Territory](../../src/com/zoho/crm/api/territories/territory.rb).

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| created_time | The method to get the value of ***Territory created_time*** |
| created_time=created_time | The method to set the value of ***Territory created_time*** |
| modified_time | The method to get the value of ***Territory modified_time*** |
| modified_time=modified_time | The method to set the value of ***Territory modified_time*** |
| manager | The method to get the value of ***Territory manager*** |
| manager=***[manager](users.md#user)*** | The method to set the value of ***Territory manager*** |
| parent_id | The method to get the value of ***Territory parent_id*** |
| parent_id=parent_id | The method to set the value of ***Territory parent_id*** |
| criteria | The method to get the value of ***Territory criteria*** |
| criteria=***[criteria](custom_views.md#criteria)*** | The method to set the value of ***Territory criteria*** |
| name | The method to get the value of ***Territory name*** |
| name=name | The method to set the value of ***Territory name*** |
| modified_by | The method to get the value of ***Territory modified_by*** |
| modified_by=***[modified_by](users.md#user)*** | The method to set the value of ***Territory modified_by*** |
| description | The method to get the value of ***Territory description*** |
| description=description | The method to set the value of ***Territory description*** |
| id | The method to get the value of ***Territory id*** |
| id=id | The method to set the value of ***Territory id*** |
| created_by | The method to get the value of ***Territory created_by*** |
| created_by=***[created_by](users.md#user)*** | The method to set the value of ***Territory created_by*** |
----

[source](../../src/com/zoho/crm/api/territories/territory.rb)

## TerritoriesOperations

Contains methods for all possible [Territories operations](../../src/com/zoho/crm/api/territories/territories_operations.rb).

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| get_territories | To get the list of all territories. |
| get_territory(id) | To get the details of a specific territory. |
----

[source](../../src/com/zoho/crm/api/territories/territories_operations.rb)

## APIException

Whenever the **API** returns an error response, an instance of [APIException](../../src/com/zoho/crm/api/territories/api_exception.rb) is returned for all operations.

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| code | The method to get the value of ***code*** key in  the **API** response |
| code=***[code](../util/choice.md#choice&lt;t>)*** | The method to set the value of ***code*** key in  the **API** response |
| status | The method to get the value of ***status*** key in  the **API** response |
| status=***[status](../util/choice.md#choice&lt;t>)*** | The method to set the value of ***status*** key in  the **API** response |
| message | The method to get the value of ***message*** key in  the **API** response |
| message=***[message](../util/choice.md#choice&lt;t>)*** | The method to set the value of ***message*** key in  the **API** response |
| details | The method to get the value of ***details*** key in  the **API** response |
| details=details | The method to set the value of ***details*** key in  the **API** response |
----

[source](../../src/com/zoho/crm/api/territories/api_exception.rb)

## ResponseWrapper

After a successful **API** request, an instance of [ResponseWrapper](../../src/com/zoho/crm/api/territories/response_wrapper.rb) is returned for ***GET*** operations.

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| territories | The method to get the list of obtained ***Territory*** instances. |
| territories=***[territories](territories.md#territory)*** | The method to set the list of obtained ***Territory*** instances. |
----

[source](../../src/com/zoho/crm/api/territories/response_wrapper.rb)
