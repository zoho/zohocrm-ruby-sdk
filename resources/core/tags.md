# Tags

The Zoho CRM [Tags API](https://www.zoho.com/crm/developer/docs/api/get-tag-list.html) reference provides information about the possible operations on **Tags**.

## Classes

| Class                 | Extends Classes |
| :-------------------- | :-------------- |
| [MergeWrapper](#mergewrapper) |  |
| [ActionWrapper](#actionwrapper) |  |
| [BodyWrapper](#bodywrapper) |  |
| [Tag](#tag) |  |
| [ResponseWrapper](#responsewrapper) |  |
| [TagsOperations](#tagsoperations) |  |
| [Info](#info) |  |
| [SuccessResponse](#successresponse) |  |
| [APIException](#apiexception) |  |
| [RecordActionWrapper](#recordactionwrapper) |  |
| [CountWrapper](#countwrapper) |  |
| [ConflictWrapper](#conflictwrapper) |  |

----

## MergeWrapper

Structure that serves as the request for Merge Tags operation.

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| tags | The method to get the list of obtained ***ConflictWrapper*** instances. |
| tags=***[tags](tags.md#conflictwrapper)*** | The method to set the list of obtained ***ConflictWrapper*** instances. |
----

[source](../../src/com/zoho/crm/api/tags/merge_wrapper.rb)

## ActionWrapper

After a successful **API** request, an instance of [ActionWrapper](../../src/com/zoho/crm/api/tags/action_wrapper.rb) is returned for **POST**, **PUT** and **DELETE** operations

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| tags | The method to get the list of obtained ***ActionResponse*** instances. |
| tags=***[tags](../../src/com/zoho/crm/api/tags/action_response.rb)*** | The method to set the list of obtained ***ActionResponse*** instances. |
----

[source](../../src/com/zoho/crm/api/tags/action_wrapper.rb)

## BodyWrapper

A structure that contains all possible keys of a single request.

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| tags | The method to get the list of obtained ***Tag*** instances. |
| tags=***[tags](tags.md#tag)*** | The method to set the list of obtained ***Tag*** instances. |
----

[source](../../src/com/zoho/crm/api/tags/body_wrapper.rb)

## Tag

Structure of Zoho CRM [Tag](../../src/com/zoho/crm/api/tags/tag.rb).

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| created_time | The method to get the value of ***Tag created_time*** |
| created_time=created_time | The method to set the value of ***Tag created_time*** |
| modified_time | The method to get the value of ***Tag modified_time*** |
| modified_time=modified_time | The method to set the value of ***Tag modified_time*** |
| name | The method to get the value of ***Tag name*** |
| name=name | The method to set the value of ***Tag name*** |
| modified_by | The method to get the value of ***Tag modified_by*** |
| modified_by=***[modified_by](users.md#user)*** | The method to set the value of ***Tag modified_by*** |
| id | The method to get the value of ***Tag id*** |
| id=id | The method to set the value of ***Tag id*** |
| created_by | The method to get the value of ***Tag created_by*** |
| created_by=***[created_by](users.md#user)*** | The method to set the value of ***Tag created_by*** |
----

[source](../../src/com/zoho/crm/api/tags/tag.rb)

## ResponseWrapper

After a successful **API** request, an instance of [ResponseWrapper](../../src/com/zoho/crm/api/tags/response_wrapper.rb) is returned for GET operations.

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| tags | The method to get the list of obtained ***Tag*** instances. |
| tags=***[tags](tags.md#tag)*** | The method to set the list of obtained ***Tag*** instances. |
| info | The method to get the value of ***ResponseWrapper info*** |
| info=***[info](tags.md#info)*** | The method to set the value of ***ResponseWrapper info*** |
----

[source](../../src/com/zoho/crm/api/tags/response_wrapper.rb)

## TagsOperations

Contains methods for all possible [Tags operations](../../src/com/zoho/crm/api/tags/tags_operations.rb).

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| get_tags(***[param_instance](../parameter_map.md#parametermap)***) | To get the list of all tags in your organization. |
| create_tags(***[request](tags.md#bodywrapper)***, ***[param_instance](../parameter_map.md#parametermap)***) | To create tags. |
| update_tags(***[request](tags.md#bodywrapper)***, ***[param_instance](../parameter_map.md#parametermap)***) | To update multiple tags. |
| update_tag(***[request](tags.md#bodywrapper)***, ***[param_instance](../parameter_map.md#parametermap)***, id) | To update a specific tag. |
| delete_tag(id) | To delete a specific tag from the module. |
| merge_tags(***[request](tags.md#mergewrapper)***, id) | To merge two tags. |
| add_tags_to_record(***[param_instance](../parameter_map.md#parametermap)***, module_api_name, record_id) | To add tags to a specific record. |
| remove_tags_from_record(***[param_instance](../parameter_map.md#parametermap)***, module_api_name, record_id) | To remove tags from a record. |
| add_tags_to_multiple_records(***[param_instance](../parameter_map.md#parametermap)***, module_api_name) | To add tags to multiple records. |
| remove_tags_from_multiple_records(***[param_instance](../parameter_map.md#parametermap)***, module_api_name) | To remove tags from multiple records. |
| get_record_count_for_tag(***[param_instance](../parameter_map.md#parametermap)***, id) | To get the record count for a tag. |
----

### Inner Static Classes

| Class                                    |
| :--------------------------------------- |
| [GetTagsParam](#gettagsparam) |
| [CreateTagsParam](#createtagsparam) |
| [UpdateTagsParam](#updatetagsparam) |
| [UpdateTagParam](#updatetagparam) |
| [AddTagsToRecordParam](#addtagstorecordparam) |
| [RemoveTagsFromRecordParam](#removetagsfromrecordparam) |
| [AddTagsToMultipleRecordsParam](#addtagstomultiplerecordsparam) |
| [RemoveTagsFromMultipleRecordsParam](#removetagsfrommultiplerecordsparam) |
| [GetRecordCountForTagParam](#getrecordcountfortagparam) |
----

[source](../../src/com/zoho/crm/api/tags/tags_operations.rb)

## Info

Structure representing additional information about the retrieved data.

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| count | The method to get the value of ***Info count*** |
| count=count | The method to set the value of ***Info count*** |
| allowed_count | The method to get the value of ***Info allowed_count*** |
| allowed_count=allowed_count | The method to set the value of ***Info allowed_count*** |
----

[source](../../src/com/zoho/crm/api/tags/info.rb)

## SuccessResponse

After a successful **POST**, **PUT** or **DELETE** operation, an instance of [SuccessResponse](../../src/com/zoho/crm/api/tags/success_response.rb) is returned.

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

[source](../../src/com/zoho/crm/api/tags/success_response.rb)

## APIException

Whenever the **API** returns an error response, an instance of [APIException](../../src/com/zoho/crm/api/tags/api_exception.rb) is returned for all operations.

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

[source](../../src/com/zoho/crm/api/tags/api_exception.rb)

## RecordActionWrapper

After a successful **API** request involving record, an instance of [RecordActionWrapper](../../src/com/zoho/crm/api/tags/record_action_wrapper.rb) is returned for **POST** operations

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| data | The method to get the list of obtained ***RecordActionResponse*** instances. |
| data=***[data](../../src/com/zoho/crm/api/tags/record_action_response.rb)*** | The method to set the list of obtained ***RecordActionResponse*** instances. |
| wf_scheduler | The method to get the value of ***RecordActionWrapper wf_scheduler*** |
| wf_scheduler=wf_scheduler | The method to set the value of ***RecordActionWrapper wf_scheduler*** |
| success_count | The method to get the value of ***RecordActionWrapper success_count*** |
| success_count=success_count | The method to set the value of ***RecordActionWrapper success_count*** |
| locked_count | The method to get the value of ***RecordActionWrapper locked_count*** |
| locked_count=locked_count | The method to set the value of ***RecordActionWrapper locked_count*** |
----

[source](../../src/com/zoho/crm/api/tags/record_action_wrapper.rb)

## CountWrapper

After a successful **API** request, an instance of [CountWrapper](../../src/com/zoho/crm/api/tags/count_wrapper.rb) is returned for ***Get Record Count For Tag***  operation

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| count | The method to get the value of ***CountWrapper count*** |
| count=count | The method to set the value of ***CountWrapper count*** |
----

[source](../../src/com/zoho/crm/api/tags/count_wrapper.rb)

## ConflictWrapper

A structure that contains all possible keys of a single Merge Tag request.

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| conflict_id | The method to get the value of ***ConflictWrapper conflict_id*** |
| conflict_id=conflict_id | The method to set the value of ***ConflictWrapper conflict_id*** |
----

[source](../../src/com/zoho/crm/api/tags/conflict_wrapper.rb)

## GetTagsParam

Contains all possible parameters for the [Get Tags operation](../../src/com/zoho/crm/api/tags/tags_operations.rb).

### Fields

| Field                      | Description                                        |
| :------------------------- | :------------------------------------------------- |
| module_1 | Represents `module` parameter |
| my_tags | Represents `my_tags` parameter |
----

## CreateTagsParam

Contains all possible parameters for the [Create Tags operation](../../src/com/zoho/crm/api/tags/tags_operations.rb).

### Fields

| Field                      | Description                                        |
| :------------------------- | :------------------------------------------------- |
| module_1 | Represents `module` parameter |
----

## UpdateTagsParam

Contains all possible parameters for the [Update Tags operation](../../src/com/zoho/crm/api/tags/tags_operations.rb).

### Fields

| Field                      | Description                                        |
| :------------------------- | :------------------------------------------------- |
| module_1 | Represents `module` parameter |
----

## UpdateTagParam

Contains all possible parameters for the [Update Tag operation](../../src/com/zoho/crm/api/tags/tags_operations.rb).

### Fields

| Field                      | Description                                        |
| :------------------------- | :------------------------------------------------- |
| module_1 | Represents `module` parameter |
----

## AddTagsToRecordParam

Contains all possible parameters for the [Add Tags To Record operation](../../src/com/zoho/crm/api/tags/tags_operations.rb).

### Fields

| Field                      | Description                                        |
| :------------------------- | :------------------------------------------------- |
| tag_names | Represents `tag_names` parameter |
| over_write | Represents `over_write` parameter |
----

## RemoveTagsFromRecordParam

Contains all possible parameters for the [Remove Tags From Record operation](../../src/com/zoho/crm/api/tags/tags_operations.rb).

### Fields

| Field                      | Description                                        |
| :------------------------- | :------------------------------------------------- |
| tag_names | Represents `tag_names` parameter |
----

## AddTagsToMultipleRecordsParam

Contains all possible parameters for the [Add Tags To Multiple Records operation](../../src/com/zoho/crm/api/tags/tags_operations.rb).

### Fields

| Field                      | Description                                        |
| :------------------------- | :------------------------------------------------- |
| tag_names | Represents `tag_names` parameter |
| ids | Represents `ids` parameter |
| over_write | Represents `over_write` parameter |
----

## RemoveTagsFromMultipleRecordsParam

Contains all possible parameters for the [Remove Tags From Multiple Records operation](../../src/com/zoho/crm/api/tags/tags_operations.rb).

### Fields

| Field                      | Description                                        |
| :------------------------- | :------------------------------------------------- |
| tag_names | Represents `tag_names` parameter |
| ids | Represents `ids` parameter |
----

## GetRecordCountForTagParam

Contains all possible parameters for the [Get Record Count For Tag operation](../../src/com/zoho/crm/api/tags/tags_operations.rb).

### Fields

| Field                      | Description                                        |
| :------------------------- | :------------------------------------------------- |
| module_1 |  Represents `module` parameter |
----
