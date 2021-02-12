# Modules

The Zoho CRM [Modules API](https://www.zoho.com/crm/developer/docs/api/modules-api.html) reference provides information about the possible operations on **Modules**.

## Classes

| Class                 | Extends Classes |
| :-------------------- | :-------------- |
| [ModulesOperations](#modulesoperations) |  |
| [Module](#module) |  |
| [Territory](#territory) |  |
| [APIException](#apiexception) |  |
| [SuccessResponse](#successresponse) |  |
| [ActionWrapper](#actionwrapper) |  |
| [ResponseWrapper](#responsewrapper) |  |
| [Argument](#argument) |  |
| [RelatedListProperties](#relatedlistproperties) |  |
| [BodyWrapper](#bodywrapper) |  |

----

## ModulesOperations

Contains methods for all possible [Modules operations](../../src/com/zoho/crm/api/modules/modules_operations.rb).

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| get_modules(***[header_instance](../header_map.md#headermap)***) | To get the details of all the modules. |
| get_module(api_name) | To get the details (metadata) of a specific module. |
| update_module_by_api_name(***[request](modules.md#bodywrapper)***, api_name) | To update the details of a module by its module API name. |
| update_module_by_id(***[request](modules.md#bodywrapper)***, id) | To update the details of a module by its ID. |
----

### Inner Static Classes

| Class                                    |
| :--------------------------------------- |
| [GetModulesHeader](#getmodulesheader) |
----

[source](../../src/com/zoho/crm/api/modules/modules_operations.rb)

## Module

Structure of Zoho CRM [Module](../../src/com/zoho/crm/api/modules/module.rb).

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| name | The method to get the value of ***Module name*** |
| name=name | The method to set the value of ***Module name*** |
| global_search_supported | The method to get the value of ***Module global_search_supported*** |
| global_search_supported=global_search_supported | The method to set the value of ***Module global_search_supported*** |
| kanban_view | The method to get the value of ***Module kanban_view*** |
| kanban_view=kanban_view | The method to set the value of ***Module kanban_view*** |
| deletable | The method to get the value of ***Module deletable*** |
| deletable=deletable | The method to set the value of ***Module deletable*** |
| description | The method to get the value of ***Module description*** |
| description=description | The method to set the value of ***Module description*** |
| creatable | The method to get the value of ***Module creatable*** |
| creatable=creatable | The method to set the value of ***Module creatable*** |
| filter_status | The method to get the value of ***Module filter_status*** |
| filter_status=filter_status | The method to set the value of ***Module filter_status*** |
| inventory_template_supported | The method to get the value of ***Module inventory_template_supported*** |
| inventory_template_supported=inventory_template_supported | The method to set the value of ***Module inventory_template_supported*** |
| modified_time | The method to get the value of ***Module modified_time*** |
| modified_time=modified_time | The method to set the value of ***Module modified_time*** |
| plural_label | The method to get the value of ***Module plural_label*** |
| plural_label=plural_label | The method to set the value of ***Module plural_label*** |
| presence_sub_menu | The method to get the value of ***Module presence_sub_menu*** |
| presence_sub_menu=presence_sub_menu | The method to set the value of ***Module presence_sub_menu*** |
| triggers_supported | The method to get the value of ***Module triggers_supported*** |
| triggers_supported=triggers_supported | The method to set the value of ***Module triggers_supported*** |
| id | The method to get the value of ***Module id*** |
| id=id | The method to set the value of ***Module id*** |
| related_list_properties | The method to get the value of ***Module related_list_properties*** |
| related_list_properties=***[related_list_properties](modules.md#relatedlistproperties)*** | The method to set the value of ***Module related_list_properties*** |
| properties | The method to get the value of ***Module properties*** |
| properties=properties | The method to set the value of ***Module properties*** |
| per_page | The method to get the value of ***Module per_page*** |
| per_page=per_page | The method to set the value of ***Module per_page*** |
| visibility | The method to get the value of ***Module visibility*** |
| visibility=visibility | The method to set the value of ***Module visibility*** |
| convertable | The method to get the value of ***Module convertable*** |
| convertable=convertable | The method to set the value of ***Module convertable*** |
| editable | The method to get the value of ***Module editable*** |
| editable=editable | The method to set the value of ***Module editable*** |
| emailtemplate_support | The method to get the value of ***Module emailtemplate_support*** |
| emailtemplate_support=emailtemplate_support | The method to set the value of ***Module emailtemplate_support*** |
| profiles | The method to get the list of obtained ***Profile*** instances. |
| profiles=***[profiles](profiles.md#profile)*** | The method to set the list of obtained ***Profile*** instances. |
| filter_supported | The method to get the value of ***Module filter_supported*** |
| filter_supported=filter_supported | The method to set the value of ***Module filter_supported*** |
| display_field | The method to get the value of ***Module display_field*** |
| display_field=display_field | The method to set the value of ***Module display_field*** |
| search_layout_fields | The method to get the value of ***Module search_layout_fields*** |
| search_layout_fields=search_layout_fields | The method to set the value of ***Module search_layout_fields*** |
| kanban_view_supported | The method to get the value of ***Module kanban_view_supported*** |
| kanban_view_supported=kanban_view_supported | The method to set the value of ***Module kanban_view_supported*** |
| show_as_tab | The method to get the value of ***Module show_as_tab*** |
| show_as_tab=show_as_tab | The method to set the value of ***Module show_as_tab*** |
| web_link | The method to get the value of ***Module web_link*** |
| web_link=web_link | The method to set the value of ***Module web_link*** |
| sequence_number | The method to get the value of ***Module sequence_number*** |
| sequence_number=sequence_number | The method to set the value of ***Module sequence_number*** |
| singular_label | The method to get the value of ***Module singular_label*** |
| singular_label=singular_label | The method to set the value of ***Module singular_label*** |
| viewable | The method to get the value of ***Module viewable*** |
| viewable=viewable | The method to set the value of ***Module viewable*** |
| api_supported | The method to get the value of ***Module api_supported*** |
| api_supported=api_supported | The method to set the value of ***Module api_supported*** |
| api_name | The method to get the value of ***Module api_name*** |
| api_name=api_name | The method to set the value of ***Module api_name*** |
| quick_create | The method to get the value of ***Module quick_create*** |
| quick_create=quick_create | The method to set the value of ***Module quick_create*** |
| modified_by | The method to get the value of ***Module modified_by*** |
| modified_by=***[modified_by](users.md#user)*** | The method to set the value of ***Module modified_by*** |
| generated_type | The method to get the value of ***Module generated_type*** |
| generated_type=***[generated_type](../util/choice.md#choice&lt;t>)*** | The method to set the value of ***Module generated_type*** |
| feeds_required | The method to get the value of ***Module feeds_required*** |
| feeds_required=feeds_required | The method to set the value of ***Module feeds_required*** |
| scoring_supported | The method to get the value of ***Module scoring_supported*** |
| scoring_supported=scoring_supported | The method to set the value of ***Module scoring_supported*** |
| webform_supported | The method to get the value of ***Module webform_supported*** |
| webform_supported=webform_supported | The method to set the value of ***Module webform_supported*** |
| arguments | The method to get the list of obtained ***Argument*** instances. |
| arguments=***[arguments](modules.md#argument)*** | The method to set the list of obtained ***Argument*** instances. |
| module_name | The method to get the value of ***Module module_name*** |
| module_name=module_name | The method to set the value of ***Module module_name*** |
| business_card_field_limit | The method to get the value of ***Module business_card_field_limit*** |
| business_card_field_limit=business_card_field_limit | The method to set the value of ***Module business_card_field_limit*** |
| custom_view | The method to get the value of ***Module custom_view*** |
| custom_view=***[custom_view](custom_views.md#customview)*** | The method to set the value of ***Module custom_view*** |
| parent_module | The method to get the value of ***Module parent_module*** |
| parent_module=***[parent_module](modules.md#module)*** | The method to set the value of ***Module parent_module*** |
| territory | The method to get the value of ***Module territory*** |
| territory=***[territory](modules.md#territory)*** | The method to set the value of ***Module territory*** |
----

[source](../../src/com/zoho/crm/api/modules/module.rb)

## Territory

Structure representing the properties of the territory, to which the module is associated.

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| id | The method to get the value of ***Territory id*** |
| id=id | The method to set the value of ***Territory id*** |
| name | The method to get the value of ***Territory name*** |
| name=name | The method to set the value of ***Territory name*** |
| subordinates | The method to get the value of ***Territory subordinates*** |
| subordinates=subordinates | The method to set the value of ***Territory subordinates*** |
----

[source](../../src/com/zoho/crm/api/modules/territory.rb)

## APIException

Whenever the **API** returns an error response, an instance of [APIException](../../src/com/zoho/crm/api/modules/api_exception.rb) is returned for all operations.

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

[source](../../src/com/zoho/crm/api/modules/api_exception.rb)

## SuccessResponse

After a successful **POST**, **PUT** or **DELETE** operation, an instance of [SuccessResponse](../../src/com/zoho/crm/api/modules/success_response.rb) is returned.

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

[source](../../src/com/zoho/crm/api/modules/success_response.rb)

## ActionWrapper

After a successful **API** request, an instance of [ActionWrapper](../../src/com/zoho/crm/api/modules/action_wrapper.rb) is returned for **POST**, **PUT** and **DELETE** operations

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| modules | The method to get the list of obtained ***ActionResponse*** instances. |
| modules=***[modules](../../src/com/zoho/crm/api/modules/action_response.rb)*** | The method to set the list of obtained ***ActionResponse*** instances. |
----

[source](../../src/com/zoho/crm/api/modules/action_wrapper.rb)

## ResponseWrapper

After a successful **API** request, and instance of [ResponseWrapper](../../src/com/zoho/crm/api/modules/response_wrapper.rb) is returned for GET operations

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| modules | The method to get the list of obtained ***Module*** instances. |
| modules=***[modules](modules.md#module)*** | The method to set the list of obtained ***Module*** instances. |
----

[source](../../src/com/zoho/crm/api/modules/response_wrapper.rb)

## Argument

Structure representing the properties of the Module's arguments.

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| name | The method to get the value of ***Argument name*** |
| name=name | The method to set the value of ***Argument name*** |
| value | The method to get the value of ***Argument value*** |
| value=value | The method to set the value of ***Argument value*** |
----

[source](../../src/com/zoho/crm/api/modules/argument.rb)

## RelatedListProperties

Structure representing the properties, when the current module is a related list of another module.

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| sort_by | The method to get the value of ***RelatedListProperties sort_by*** |
| sort_by=sort_by | The method to set the value of ***RelatedListProperties sort_by*** |
| fields | The method to get the value of ***RelatedListProperties fields*** |
| fields=fields | The method to set the value of ***RelatedListProperties fields*** |
| sort_order | The method to get the value of ***RelatedListProperties sort_order*** |
| sort_order=sort_order | The method to set the value of ***RelatedListProperties sort_order*** |
----

[source](../../src/com/zoho/crm/api/modules/related_list_properties.rb)

## BodyWrapper

A structure that contains all possible keys of a single request.

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| modules | The method to get the list of obtained ***Module*** instances. |
| modules=***[modules](modules.md#module)*** | The method to set the list of obtained ***Module*** instances. |
----

[source](../../src/com/zoho/crm/api/modules/body_wrapper.rb)

## GetModulesHeader

Contains all possible headers for [Get Modules operation](../../src/com/zoho/crm/api/modules/modules_operations.rb).

### Fields

| Field                      | Description                                        |
| :------------------------- | :------------------------------------------------- |
| If_modified_since | Represents `If-Modified-Since` header |
----
