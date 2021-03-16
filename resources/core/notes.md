# Notes

The Zoho CRM [Notes API](https://www.zoho.com/crm/developer/docs/api/get-notes.html) reference provides information about the possible operations on **Notes**.

## Classes

| Class                 | Extends Classes |
| :-------------------- | :-------------- |
| [ActionWrapper](#actionwrapper) |  |
| [SuccessResponse](#successresponse) |  |
| [BodyWrapper](#bodywrapper) |  |
| [APIException](#apiexception) |  |
| [Info](#info) |  |
| [NotesOperations](#notesoperations) |  |
| [ResponseWrapper](#responsewrapper) |  |
| [Note](#note) |  |

----

## ActionWrapper

After a successful **API** request, an instance of [ActionWrapper](../../src/com/zoho/crm/api/notes/action_wrapper.rb)is returned for **POST**, **PUT** and **DELETE** operations

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| data | The method to get the list of obtained ***ActionResponse*** instances. |
| data=***[data](../../src/com/zoho/crm/api/notes/action_response.rb)*** | The method to set the list of obtained ***ActionResponse*** instances. |
----

[source](../../src/com/zoho/crm/api/notes/action_wrapper.rb)

## SuccessResponse

After a successful **POST**, **PUT** or **DELETE** operation, an instance of [SuccessResponse](../../src/com/zoho/crm/api/notes/success_response.rb) is returned.

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

[source](../../src/com/zoho/crm/api/notes/success_response.rb)

## BodyWrapper

A structure that contains all possible keys of a single request.

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| data | The method to get the list of obtained ***Note*** instances. |
| data=***[data](notes.md#note)*** | The method to set the list of obtained ***Note*** instances. |
----

[source](../../src/com/zoho/crm/api/notes/body_wrapper.rb)

## APIException

Whenever the **API** returns an error response, an instance of [APIException]((../../src/com/zoho/crm/api/notes/api_exception.rb) is returned for all operations.

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

[source](../../src/com/zoho/crm/api/notes/api_exception.rb)

## Info

The structure containing the additional properties of Notes.

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| per_page | The method to get the value of ***Info per_page*** |
| per_page=per_page | The method to set the value of ***Info per_page*** |
| count | The method to get the value of ***Info count*** |
| count=count | The method to set the value of ***Info count*** |
| page | The method to get the value of ***Info page*** |
| page=page | The method to set the value of ***Info page*** |
| more_records | The method to get the value of ***Info more_records*** |
| more_records=more_records | The method to set the value of ***Info more_records*** |
----

[source](../../src/com/zoho/crm/api/notes/info.rb)

## NotesOperations

Contains methods for all possible [Notes operations](../../src/com/zoho/crm/api/notes/notes_operations.rb).

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| get_notes(***[param_instance](../parameter_map.md#parametermap)***, ***[header_instance](../header_map.md#headermap)***) | To get the list of notes of a record. |
| create_notes(***[request](notes.md#bodywrapper)***) | To add new notes to a record. |
| update_notes(***[request](notes.md#bodywrapper)***) | To update the details of the notes of a record. |
| delete_notes(***[param_instance](../parameter_map.md#parametermap)***) | To delete the notes of a record. |
| get_note(id) | To get the details of a specific note. |
| update_note(***[request](notes.md#bodywrapper)***, id) | To update the details of an existing note. |
| delete_note(id) | To delete a specific note. |
----

### Inner Static Classes

| Class                                    |
| :--------------------------------------- |
| [GetNotesParam](#getnotesparam) |
| [GetNotesHeader](#getnotesheader) |
| [DeleteNotesParam](#deletenotesparam) |
----

[source](../../src/com/zoho/crm/api/notes/notes_operations.rb)

## ResponseWrapper

After a successful **API** request, an instance of [ResponseWrapper](../../src/com/zoho/crm/api/notes/response_wrapper.rb) is returned for GET operations

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| data | The method to get the list of obtained ***Note*** instances. |
| data=***[data](notes.md#note)*** | The method to set the list of obtained ***Note*** instances. |
| info | The method to get the value of ***ResponseWrapper info*** |
| info=***[info](notes.md#info)*** | The method to set the value of ***ResponseWrapper info*** |
----

[source](../../src/com/zoho/crm/api/notes/response_wrapper.rb)

## Note

Structure of Zoho CRM [Note](../../src/com/zoho/crm/api/notes/note.rb).

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| owner | The method to get the value of ***Note owner*** |
| owner=***[owner](users.md#user)*** | The method to set the value of ***Note owner*** |
| modified_time | The method to get the value of ***Note modified_time*** |
| modified_time=modified_time | The method to set the value of ***Note modified_time*** |
| attachments | The method to get the list of obtained ***Attachment*** instances. |
| attachments=***[attachments](attachments.md#attachment)*** | The method to set the list of obtained ***Attachment*** instances. |
| created_time | The method to get the value of ***Note created_time*** |
| created_time=created_time | The method to set the value of ***Note created_time*** |
| parent_id | The method to get the value of ***Note parent_id*** |
| parent_id=***[parent_id](record.md#record-1)*** | The method to set the value of ***Note parent_id*** |
| editable | The method to get the value of ***Note editable*** |
| editable=editable | The method to set the value of ***Note editable*** |
| se_module | The method to get the value of ***Note se_module*** |
| se_module=se_module | The method to set the value of ***Note se_module*** |
| is_shared_to_client | The method to get the value of ***Note is_shared_to_client*** |
| is_shared_to_client=is_shared_to_client | The method to set the value of ***Note is_shared_to_client*** |
| modified_by | The method to get the value of ***Note modified_by*** |
| modified_by=***[modified_by](users.md#user)*** | The method to set the value of ***Note modified_by*** |
| size | The method to get the value of ***Note size*** |
| size=size | The method to set the value of ***Note size*** |
| state | The method to get the value of ***Note state*** |
| state=state | The method to set the value of ***Note state*** |
| voice_note | The method to get the value of ***Note voice_note*** |
| voice_note=voice_note | The method to set the value of ***Note voice_note*** |
| id | The method to get the value of ***Note id*** |
| id=id | The method to set the value of ***Note id*** |
| created_by | The method to get the value of ***Note created_by*** |
| created_by=***[created_by](users.md#user)*** | The method to set the value of ***Note created_by*** |
| note_title | The method to get the value of ***Note note_title*** |
| note_title=note_title | The method to set the value of ***Note note_title*** |
| note_content | The method to get the value of ***Note note_content*** |
| note_content=note_content | The method to set the value of ***Note note_content*** |
----

[source](../../src/com/zoho/crm/api/notes/note.rb)

## GetNotesParam

Contains all possible parameters for the [Get Notes operation](../../src/com/zoho/crm/api/notes/notes_operations.rb).

### Fields

| Field                      | Description                                        |
| :------------------------- | :------------------------------------------------- |
| page | Represents `page` parameter |
| per_page | Represents `per_page` parameter |
----

## GetNotesHeader

Contains all possible headers for [Get Notes operation](../../src/com/zoho/crm/api/notes/notes_operations.rb).

### Fields

| Field                      | Description                                        |
| :------------------------- | :------------------------------------------------- |
| If_modified_since | Represents `If-Modified-Since` header |
----

## DeleteNotesParam

Contains all possible parameters for the [Delete Notes operation](../../src/com/zoho/crm/api/notes/notes_operations.rb).

### Fields

| Field                      | Description                                        |
| :------------------------- | :------------------------------------------------- |
| ids | Represents `ids` parameter |
----
