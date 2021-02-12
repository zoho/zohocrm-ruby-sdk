# CustomViews

The Zoho CRM [CustomView Meta Data API](https://www.zoho.com/crm/developer/docs/api/custom-view-meta.html) reference provides information about the possible operations on **CustomViews**.

## Classes

| Class                 | Extends Classes |
| :-------------------- | :-------------- |
| [SharedDetails](#shareddetails) |  |
| [Translation](#translation) |  |
| [CustomViewsOperations](#customviewsoperations) |  |
| [ResponseWrapper](#responsewrapper) |  |
| [Info](#info) |  |
| [CustomView](#customview) |  |
| [Criteria](#criteria) |  |
| [Range](#range) |  |
| [APIException](#apiexception) |  |

----

## SharedDetails

The structure representing the sharing properties of the Custom View.

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| id | The method to get the value of ***SharedDetails id*** |
| id=id | The method to set the value of ***SharedDetails id*** |
| name | The method to get the value of ***SharedDetails name*** |
| name=name | The method to set the value of ***SharedDetails name*** |
| type | The method to get the value of ***SharedDetails type*** |
| type=type | The method to set the value of ***SharedDetails type*** |
| subordinates | The method to get the value of ***SharedDetails subordinates*** |
| subordinates=subordinates | The method to set the value of ***SharedDetails subordinates*** |
----

[source](../../src/com/zoho/crm/api/custom_views/shared_details.rb)

## Translation

The structure representing the additional Translation properties of the Custom Views.

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| public_views | The method to get the value of ***Translation public_views*** |
| public_views=public_views | The method to set the value of ***Translation public_views*** |
| other_users_views | The method to get the value of ***Translation other_users_views*** |
| other_users_views=other_users_views | The method to set the value of ***Translation other_users_views*** |
| shared_with_me | The method to get the value of ***Translation shared_with_me*** |
| shared_with_me=shared_with_me | The method to set the value of ***Translation shared_with_me*** |
| created_by_me | The method to get the value of ***Translation created_by_me*** |
| created_by_me=created_by_me | The method to set the value of ***Translation created_by_me*** |
----

[source](../../src/com/zoho/crm/api/custom_views/translation.rb)

## CustomViewsOperations

Contains methods for all possible [CustomViews operations](../../src/com/zoho/crm/api/custom_views/custom_views_operations.rb).

### Constructors

| Constructor                                                   | Description                                                                     |
| :------------------------------------------------------------ | :------------------------------------------------------------------------------ |
| initialize(module_1) | Creates a ***CustomViewsOperations*** class instance with the ***moduleAPIName***. |
----

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| get_custom_views | To get the list of all custom views in a module. |
| get_custom_view(id) | To get the details of specific custom view in a module. |
----

[source](../../src/com/zoho/crm/api/custom_views/custom_views_operations.rb)

## ResponseWrapper

After a successful **API** request, an instance of [ResponseWrapper](../../src/com/zoho/crm/api/custom_views/response_wrapper.rb) is returned for GET operations

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| custom_views | The method to get the list of obtained ***CustomView*** instances. |
| custom_views=***[custom_views](custom_views.md#customview)*** | The method to set the list of obtained ***CustomView*** instances. |
| info | The method to get the value of ***ResponseWrapper info*** |
| info=***[info](custom_views.md#info)*** | The method to set the value of ***ResponseWrapper info*** |
----

[source](../../src/com/zoho/crm/api/custom_views/response_wrapper.rb)

## Info

The structure containing the additional properties of Custom Views.

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| per_page | The method to get the value of ***Info per_page*** |
| per_page=per_page | The method to set the value of ***Info per_page*** |
| default | The method to get the value of ***Info default*** |
| default=default | The method to set the value of ***Info default*** |
| count | The method to get the value of ***Info count*** |
| count=count | The method to set the value of ***Info count*** |
| page | The method to get the value of ***Info page*** |
| page=page | The method to set the value of ***Info page*** |
| more_records | The method to get the value of ***Info more_records*** |
| more_records=more_records | The method to set the value of ***Info more_records*** |
| translation | The method to get the value of ***Info translation*** |
| translation=***[translation](custom_views.md#translation)*** | The method to set the value of ***Info translation*** |
----

[source](../../src/com/zoho/crm/api/custom_views/info.rb)

## CustomView

Structure of Zoho CRM [CustomView](../../src/com/zoho/crm/api/custom_views/custom_view.rb).

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| id | The method to get the value of ***CustomView id*** |
| id=id | The method to set the value of ***CustomView id*** |
| name | The method to get the value of ***CustomView name*** |
| name=name | The method to set the value of ***CustomView name*** |
| system_name | The method to get the value of ***CustomView system_name*** |
| system_name=system_name | The method to set the value of ***CustomView system_name*** |
| display_value | The method to get the value of ***CustomView display_value*** |
| display_value=display_value | The method to set the value of ***CustomView display_value*** |
| shared_type | The method to get the value of ***CustomView shared_type*** |
| shared_type=shared_type | The method to set the value of ***CustomView shared_type*** |
| category | The method to get the value of ***CustomView category*** |
| category=category | The method to set the value of ***CustomView category*** |
| sort_by | The method to get the value of ***CustomView sort_by*** |
| sort_by=sort_by | The method to set the value of ***CustomView sort_by*** |
| sort_order | The method to get the value of ***CustomView sort_order*** |
| sort_order=sort_order | The method to set the value of ***CustomView sort_order*** |
| favorite | The method to get the value of ***CustomView favorite*** |
| favorite=favorite | The method to set the value of ***CustomView favorite*** |
| offline | The method to get the value of ***CustomView offline*** |
| offline=offline | The method to set the value of ***CustomView offline*** |
| default | The method to get the value of ***CustomView default*** |
| default=default | The method to set the value of ***CustomView default*** |
| system_defined | The method to get the value of ***CustomView system_defined*** |
| system_defined=system_defined | The method to set the value of ***CustomView system_defined*** |
| criteria | The method to get the value of ***CustomView criteria*** |
| criteria=***[criteria](custom_views.md#criteria)*** | The method to set the value of ***CustomView criteria*** |
| shared_details | The method to get the list of obtained ***SharedDetails*** instances. |
| shared_details=***[shared_details](custom_views.md#shareddetails)*** | The method to set the list of obtained ***SharedDetails*** instances. |
| fields | The method to get the value of ***CustomView fields*** |
| fields=fields | The method to set the value of ***CustomView fields*** |
----

[source](../../src/com/zoho/crm/api/custom_views/custom_view.rb)

## Criteria

The structure represents the condition set to the Custom View.

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| comparator | The method to get the value of ***Criteria comparator*** |
| comparator=***[comparator](../util/choice.md#choice&lt;t>)*** | The method to set the value of ***Criteria comparator*** |
| field | The method to get the value of ***Criteria field*** |
| field=field | The method to set the value of ***Criteria field*** |
| value | The method to get the value of ***Criteria value*** |
| value=value | The method to set the value of ***Criteria value*** |
| group_operator | The method to get the value of ***Criteria group_operator*** |
| group_operator=***[group_operator](../util/choice.md#choice&lt;t>)*** | The method to set the value of ***Criteria group_operator*** |
| group | The method to get the list of obtained ***Criteria*** instances. |
| group=***[group](custom_views.md#criteria)*** | The method to set the list of obtained ***Criteria*** instances. |
----

[source](../../src/com/zoho/crm/api/custom_views/criteria.rb)

## Range

The structure reprensenting the properties of [Range](../../src/com/zoho/crm/api/custom_views/range.rb).

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| from | The method to get the value of ***Range from*** |
| from=from | The method to set the value of ***Range from*** |
| to | The method to get the value of ***Range to*** |
| to=to | The method to set the value of ***Range to*** |
----

[source](../../src/com/zoho/crm/api/custom_views/range.rb)

## APIException

Whenever the **API** returns an error response, an instance of [APIException](../../src/com/zoho/crm/api/custom_views/api_exception.rb) is returned for all operations.

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

[source](../../src/com/zoho/crm/api/custom_views/api_exception.rb)
