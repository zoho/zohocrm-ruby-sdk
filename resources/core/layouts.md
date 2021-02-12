# Layouts

The Zoho CRM [Layouts Meta Data API](https://www.zoho.com/crm/developer/docs/api/layouts-meta.html) reference provides information about the possible operations on **Layouts**.

## Classes

| Class                 | Extends Classes |
| :-------------------- | :-------------- |
| [ResponseWrapper](#responsewrapper) |  |
| [LayoutsOperations](#layoutsoperations) |  |
| [Section](#section) |  |
| [APIException](#apiexception) |  |
| [Layout](#layout) |  |
| [Properties](#properties) |  |

----

## ResponseWrapper

After a successful **API** request, an instance of [ResponseWrapper](../../src/com/zoho/crm/api/layouts/response_wrapper.rb) is returned for GET operations

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| layouts | The method to get the list of obtained ***Layout*** instances. |
| layouts=***[layouts](layouts.md#layout)*** | The method to set the list of obtained ***Layout*** instances. |
----

[source](../../src/com/zoho/crm/api/layouts/response_wrapper.rb)

## LayoutsOperations

Contains methods for all possible [Layouts operations](../../src/com/zoho/crm/api/layouts/layouts_operations.rb).

### Constructors

| Constructor                                                   | Description                                                                     |
| :------------------------------------------------------------ | :------------------------------------------------------------------------------ |
| initialize(module) | Creates a ***LayoutsOperations*** class instance with the ***moduleAPIName***. |
----

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| get_layouts | To get the details of all the layouts in a module. |
| get_layout(id) | To get the details (metadata) of a specific layout in a module. |
----

[source](../../src/com/zoho/crm/api/layouts/layouts_operations.rb)

## Section

Structure that represents the Layout's section.

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| display_label | The method to get the value of ***Section display_label*** |
| display_label=display_label | The method to set the value of ***Section display_label*** |
| sequence_number | The method to get the value of ***Section sequence_number*** |
| sequence_number=sequence_number | The method to set the value of ***Section sequence_number*** |
| issubformsection | The method to get the value of ***Section issubformsection*** |
| issubformsection=issubformsection | The method to set the value of ***Section issubformsection*** |
| tab_traversal | The method to get the value of ***Section tab_traversal*** |
| tab_traversal=tab_traversal | The method to set the value of ***Section tab_traversal*** |
| api_name | The method to get the value of ***Section api_name*** |
| api_name=api_name | The method to set the value of ***Section api_name*** |
| column_count | The method to get the value of ***Section column_count*** |
| column_count=column_count | The method to set the value of ***Section column_count*** |
| name | The method to get the value of ***Section name*** |
| name=name | The method to set the value of ***Section name*** |
| generated_type | The method to get the value of ***Section generated_type*** |
| generated_type=generated_type | The method to set the value of ***Section generated_type*** |
| fields | The method to get the list of obtained ***Field*** instances. |
| fields=***[fields](fields.md#field)*** | The method to set the list of obtained ***Field*** instances. |
| properties | The method to get the value of ***Section properties*** |
| properties=***[properties](layouts.md#properties)*** | The method to set the value of ***Section properties*** |
----

[source](../../src/com/zoho/crm/api/layouts/section.rb)

## APIException

Whenever the **API** returns an error response, an instance of [APIException](../../src/com/zoho/crm/api/layouts/api_exception.rb) is returned for all operations.

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

[source](../../src/com/zoho/crm/api/layouts/api_exception.rb)

## Layout

Structure of Zoho CRM [Layout](../../src/com/zoho/crm/api/layouts/layout.rb).

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| created_time | The method to get the value of ***Layout created_time*** |
| created_time=created_time | The method to set the value of ***Layout created_time*** |
| convert_mapping | The method to get the value of ***Layout convert_mapping*** |
| convert_mapping=convert_mapping | The method to set the value of ***Layout convert_mapping*** |
| modified_time | The method to get the value of ***Layout modified_time*** |
| modified_time=modified_time | The method to set the value of ***Layout modified_time*** |
| visible | The method to get the value of ***Layout visible*** |
| visible=visible | The method to set the value of ***Layout visible*** |
| created_for | The method to get the value of ***Layout created_for*** |
| created_for=***[created_for](users.md#user)*** | The method to set the value of ***Layout created_for*** |
| name | The method to get the value of ***Layout name*** |
| name=name | The method to set the value of ***Layout name*** |
| modified_by | The method to get the value of ***Layout modified_by*** |
| modified_by=***[modified_by](users.md#user)*** | The method to set the value of ***Layout modified_by*** |
| profiles | The method to get the list of obtained ***Profile*** instances. |
| profiles=***[profiles](profiles.md#profile)*** | The method to set the list of obtained ***Profile*** instances. |
| id | The method to get the value of ***Layout id*** |
| id=id | The method to set the value of ***Layout id*** |
| created_by | The method to get the value of ***Layout created_by*** |
| created_by=***[created_by](users.md#user)*** | The method to set the value of ***Layout created_by*** |
| sections | The method to get the list of obtained ***Section*** instances. |
| sections=***[sections](layouts.md#section)*** | The method to set the list of obtained ***Section*** instances. |
| status | The method to get the value of ***Layout status*** |
| status=status | The method to set the value of ***Layout status*** |
----

[source](../../src/com/zoho/crm/api/layouts/layout.rb)

## Properties

Structure representing the Section's [properties](../../src/com/zoho/crm/api/layouts/properties.rb).

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| reorder_rows | The method to get the value of ***Properties reorder_rows*** |
| reorder_rows=reorder_rows | The method to set the value of ***Properties reorder_rows*** |
| tooltip | The method to get the value of ***Properties tooltip*** |
| tooltip=***[tooltip](fields.md#tooltip)*** | The method to set the value of ***Properties tooltip*** |
| maximum_rows | The method to get the value of ***Properties maximum_rows*** |
| maximum_rows=maximum_rows | The method to set the value of ***Properties maximum_rows*** |
----

[source](../../src/com/zoho/crm/api/layouts/properties.rb)
