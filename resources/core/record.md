# Record

The Zoho CRM [Records API](https://www.zoho.com/crm/developer/docs/api/get-records.html) reference provides information about the possible operations on **Records**.

## Classes

| Class                 | Extends Classes |
| :-------------------- | :-------------- |
| [ResponseWrapper](#responsewrapper) |  |
| [SuccessResponse](#successresponse) |  |
| [ConvertActionWrapper](#convertactionwrapper) |  |
| [MassUpdateBodyWrapper](#massupdatebodywrapper) |  |
| [APIException](#apiexception) |  |
| [Territory](#territory) |  |
| [SuccessfulConvert](#successfulconvert) |  |
| [LeadConverter](#leadconverter) |  |
| [BodyWrapper](#bodywrapper) |  |
| [Criteria](#criteria) |  |
| [MassUpdateActionWrapper](#massupdateactionwrapper) |  |
| [Info](#info) |  |
| [FileBodyWrapper](#filebodywrapper) |  |
| [InventoryLineItems](#inventorylineitems) | [Record](record.md#record-1) |
| [RecordOperations](#recordoperations) |  |
| [MassUpdate](#massupdate) |  |
| [Field](#field) |  |
| [ActionWrapper](#actionwrapper) |  |
| [Record](#record-1) |  |
| [RemindAt](#remindat) |  |
| [Participants](#participants) | [Record](record.md#record-1) |
| [ConvertBodyWrapper](#convertbodywrapper) |  |
| [MassUpdateResponseWrapper](#massupdateresponsewrapper) |  |
| [FileDetails](#filedetails) |  |
| [Options](#options) |  |
| [Reminder](#reminder) |  |
| [DeletedRecordsWrapper](#deletedrecordswrapper) |  |
| [DeletedRecord](#deletedrecord) |  |
| [LineTax](#linetax) |  |
| [RecurringActivity](#recurringactivity) |  |
| [LineItemProduct](#lineitemproduct) | [Record](record.md#record-1) |
| [Comment](#comment) |  |
| [MassUpdateSuccessResponse](#massupdatesuccessresponse) |  |
| [PricingDetails](#pricingdetails) | [Record](record.md#record-1) |

----

## ResponseWrapper

After a successful **API** request, an instance of [ResponseWrapper](../../src/com/zoho/crm/api/record/response_wrapper.rb) is returned for GET operations.

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| data | The method to get the list of obtained ***Record*** instances. |
| data=***[data](record.md#record-1)*** | The method to set the list of obtained ***Record*** instances. |
| info | The method to get the value of ***ResponseWrapper info*** |
| info=***[info](record.md#info)*** | The method to set the value of ***ResponseWrapper info*** |
----

[source](../../src/com/zoho/crm/api/record/response_wrapper.rb)

## SuccessResponse

After a successful **POST**, **PUT** or **DELETE** operation, an instance of [SuccessResponse](../../src/com/zoho/crm/api/record/success_response.rb) is returned.

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| status | The method to get the value of ***status*** key in  the **API** response |
| status=***[status](../util/choice.md#choice&lt;t>)*** | The method to set the value of ***status*** key in  the **API** response |
| code | The method to get the value of ***code*** key in  the **API** response |
| code=***[code](../util/choice.md#choice&lt;t>)*** | The method to set the value of ***code*** key in  the **API** response |
| duplicate_field | The method to get the value of ***duplicate_field*** key in  the **API** response |
| duplicate_field=duplicate_field | The method to set the value of ***duplicate_field*** key in  the **API** response |
| action | The method to get the value of ***action*** key in  the **API** response |
| action=***[action](../util/choice.md#choice&lt;t>)*** | The method to set the value of ***action*** key in  the **API** response |
| message | The method to get the value of ***message*** key in  the **API** response |
| message=***[message](../util/choice.md#choice&lt;t>)*** | The method to set the value of ***message*** key in  the **API** response |
| details | The method to get the value of ***details*** key in  the **API** response |
| details=details | The method to set the value of ***details*** key in  the **API** response |
----

[source](../../src/com/zoho/crm/api/record/success_response.rb)

## ConvertActionWrapper

After a successful Convert Lead request, an instance of [ConvertActionWrapper](../../src/com/zoho/crm/api/record/convert_action_wrapper.rb) is returned.

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| data | The method to get the list of obtained ***ConvertActionResponse*** instances. |
| data=***[data](../../src/com/zoho/crm/api/record/convert_action_response.rb)*** | The method to set the list of obtained ***ConvertActionResponse*** instances. |
----

[source](../../src/com/zoho/crm/api/record/convert_action_wrapper.rb)

## MassUpdateBodyWrapper

A structure that contains all possible keys of a single MassUpdate request.

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| data | The method to get the list of obtained ***Record*** instances. |
| data=***[data](record.md#record-1)*** | The method to set the list of obtained ***Record*** instances. |
| cvid | The method to get the value of ***MassUpdateBodyWrapper cvid*** |
| cvid=cvid | The method to set the value of ***MassUpdateBodyWrapper cvid*** |
| ids | The method to get the list of obtained ***Long*** instances. |
| ids=ids | The method to set the list of obtained ***Long*** instances. |
| territory | The method to get the value of ***MassUpdateBodyWrapper territory*** |
| territory=***[territory](record.md#territory)*** | The method to set the value of ***MassUpdateBodyWrapper territory*** |
| over_write | The method to get the value of ***MassUpdateBodyWrapper over_write*** |
| over_write=over_write | The method to set the value of ***MassUpdateBodyWrapper over_write*** |
| criteria | The method to get the list of obtained ***Criteria*** instances. |
| criteria=***[criteria](record.md#criteria)*** | The method to set the list of obtained ***Criteria*** instances. |
----

[source](../../src/com/zoho/crm/api/record/mass_update_body_wrapper.rb)

## APIException

Whenever the **API** returns an error response, an instance of [APIException](../../src/com/zoho/crm/api/record/api_exception.rb) is returned for all operations.

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

[source](../../src/com/zoho/crm/api/record/api_exception.rb)

## Territory

Structure representing the properties of the territory the user is associated with.

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| id | The method to get the value of ***Territory id*** |
| id=id | The method to set the value of ***Territory id*** |
| include_child | The method to get the value of ***Territory include_child*** |
| include_child=include_child | The method to set the value of ***Territory include_child*** |
----

[source](../../src/com/zoho/crm/api/record/territory.rb)

## SuccessfulConvert

After a successful Convert Lead operation, an instance of [SuccessfulConvert](../../src/com/zoho/crm/api/record/successful_convert.rb) is returned.

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| contacts | The method to get the value of ***SuccessfulConvert contacts*** |
| contacts=contacts | The method to set the value of ***SuccessfulConvert contacts*** |
| deals | The method to get the value of ***SuccessfulConvert deals*** |
| deals=deals | The method to set the value of ***SuccessfulConvert deals*** |
| accounts | The method to get the value of ***SuccessfulConvert accounts*** |
| accounts=accounts | The method to set the value of ***SuccessfulConvert accounts*** |
----

[source](../../src/com/zoho/crm/api/record/successful_convert.rb)

## LeadConverter

Structure that contains all possible keys for the Convert Lead Operation.

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| overwrite | The method to get the value of ***LeadConverter overwrite*** |
| overwrite=overwrite | The method to set the value of ***LeadConverter overwrite*** |
| notify_lead_owner | The method to get the value of ***LeadConverter notify_lead_owner*** |
| notify_lead_owner=notify_lead_owner | The method to set the value of ***LeadConverter notify_lead_owner*** |
| notify_new_entity_owner | The method to get the value of ***LeadConverter notify_new_entity_owner*** |
| notify_new_entity_owner=notify_new_entity_owner | The method to set the value of ***LeadConverter notify_new_entity_owner*** |
| accounts | The method to get the value of ***LeadConverter accounts*** |
| accounts=accounts | The method to set the value of ***LeadConverter accounts*** |
| contacts | The method to get the value of ***LeadConverter contacts*** |
| contacts=contacts | The method to set the value of ***LeadConverter contacts*** |
| assign_to | The method to get the value of ***LeadConverter assign_to*** |
| assign_to=assign_to | The method to set the value of ***LeadConverter assign_to*** |
| deals | The method to get the value of ***LeadConverter deals*** |
| deals=***[deals](record.md#record-1)*** | The method to set the value of ***LeadConverter deals*** |
----

[source](../../src/com/zoho/crm/api/record/lead_converter.rb)

## BodyWrapper

A structure that contains all possible keys of a single request.

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| data | The method to get the list of obtained ***Record*** instances. |
| data=***[data](record.md#record-1)*** | The method to set the list of obtained ***Record*** instances. |
| trigger | The method to get the value of ***BodyWrapper trigger*** |
| trigger=trigger | The method to set the value of ***BodyWrapper trigger*** |
| process | The method to get the value of ***BodyWrapper process*** |
| process=process | The method to set the value of ***BodyWrapper process*** |
| duplicate_check_fields | The method to get the value of ***BodyWrapper duplicate_check_fields*** |
| duplicate_check_fields=duplicate_check_fields | The method to set the value of ***BodyWrapper duplicate_check_fields*** |
| wf_trigger | The method to get the value of ***BodyWrapper wf_trigger*** |
| wf_trigger=wf_trigger | The method to set the value of ***BodyWrapper wf_trigger*** |
| lar_id | The method to get the value of ***BodyWrapper lar_id*** |
| lar_id=lar_id | The method to set the value of ***BodyWrapper lar_id*** |
----

[source](../../src/com/zoho/crm/api/record/body_wrapper.rb)

## Criteria

The structure that represents the condition to MassUpdate Records.

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
| group=***[group](record.md#criteria)*** | The method to set the list of obtained ***Criteria*** instances. |
----

[source](../../src/com/zoho/crm/api/record/criteria.rb)

## MassUpdateActionWrapper

After a successful **API** request, an instance of [MassUpdateActionWrapper](../../src/com/zoho/crm/api/record/mass_update_action_wrapper.rb) is returned for the GET MassUpdate records operation.

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| data | The method to get the list of obtained ***MassUpdateActionResponse*** instances. |
| data=***[data](../../src/com/zoho/crm/api/record/mass_update_action_response.rb)*** | The method to set the list of obtained ***MassUpdateActionResponse*** instances. |
----

[source](../../src/com/zoho/crm/api/record/mass_update_action_wrapper.rb)

## Info

Structure representing additional information about the retrieved data.

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

[source](../../src/com/zoho/crm/api/record/info.rb)

## FileBodyWrapper

Serves as the request for uploading photo and response for downloading photo operations.

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| file | The method to get the value of ***FileBodyWrapper file*** |
| file=***[file](../util/stream_wrapper.md#streamwrapper)*** | The method to set the value of ***FileBodyWrapper file*** |
----

[source](../../src/com/zoho/crm/api/record/file_body_wrapper.rb)

## InventoryLineItems

Structure representing the properties of LineItems used in Inventory modules.

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| product | The method to get the value of ***InventoryLineItems product*** |
| product=***[product](record.md#lineitemproduct)*** | The method to set the value of ***InventoryLineItems product*** |
| quantity | The method to get the value of ***InventoryLineItems quantity*** |
| quantity=quantity | The method to set the value of ***InventoryLineItems quantity*** |
| discount | The method to get the value of ***InventoryLineItems discount*** |
| discount=discount | The method to set the value of ***InventoryLineItems discount*** |
| total_after_discount | The method to get the value of ***InventoryLineItems total_after_discount*** |
| total_after_discount=total_after_discount | The method to set the value of ***InventoryLineItems total_after_discount*** |
| net_total | The method to get the value of ***InventoryLineItems net_total*** |
| net_total=net_total | The method to set the value of ***InventoryLineItems net_total*** |
| book | The method to get the value of ***InventoryLineItems book*** |
| book=book | The method to set the value of ***InventoryLineItems book*** |
| tax | The method to get the value of ***InventoryLineItems tax*** |
| tax=tax | The method to set the value of ***InventoryLineItems tax*** |
| list_price | The method to get the value of ***InventoryLineItems list_price*** |
| list_price=list_price | The method to set the value of ***InventoryLineItems list_price*** |
| unit_price | The method to get the value of ***InventoryLineItems unit_price*** |
| unit_price=unit_price | The method to set the value of ***InventoryLineItems unit_price*** |
| quantity_in_stock | The method to get the value of ***InventoryLineItems quantity_in_stock*** |
| quantity_in_stock=quantity_in_stock | The method to set the value of ***InventoryLineItems quantity_in_stock*** |
| total | The method to get the value of ***InventoryLineItems total*** |
| total=total | The method to set the value of ***InventoryLineItems total*** |
| product_description | The method to get the value of ***InventoryLineItems product_description*** |
| product_description=product_description | The method to set the value of ***InventoryLineItems product_description*** |
| line_tax | The method to get the list of obtained ***LineTax*** instances. |
| line_tax=***[line_tax](record.md#linetax)*** | The method to set the list of obtained ***LineTax*** instances. |
----

[source](../../src/com/zoho/crm/api/record/inventory_line_items.rb)

## RecordOperations

Contains methods for all possible [Record operations](../../src/com/zoho/crm/api/record/record_operations.rb).

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| get_record(***[param_instance](../parameter_map.md#parametermap)***, ***[header_instance](../header_map.md#headermap)***, module_api_name, id) | To get a specific record from a module. |
| update_record(***[request](record.md#bodywrapper)***, module_api_name, id) | To update a specific record in a module. |
| delete_record(***[param_instance](../parameter_map.md#parametermap)***, module_api_name, id) | To delete a specific record from a module. |
| get_records(***[param_instance](../parameter_map.md#parametermap)***, ***[header_instance](../header_map.md#headermap)***, module_api_name) | To get all records from a module. |
| create_records(***[request](record.md#bodywrapper)***, module_api_name) | To insert records in a module. |
| update_records(***[request](record.md#bodywrapper)***, module_api_name) | To update records in a module. |
| delete_records(***[param_instance](../parameter_map.md#parametermap)***, module_api_name) | To delete records from a module. |
| upsert_records(***[request](record.md#bodywrapper)***, module_api_name) | To insert/update records in a module. |
| get_deleted_records(***[param_instance](../parameter_map.md#parametermap)***, ***[header_instance](../header_map.md#headermap)***, module_api_name) | To get the deleted records from a module. |
| search_records(***[param_instance](../parameter_map.md#parametermap)***, module_api_name) | To search for records in a module that match certain criteria, email, phone number, or a word. |
| convert_lead(***[request](record.md#convertbodywrapper)***, id) | To convert records(Leads to Contacts/Deals). |
| get_photo(module_api_name, id) | To get the photo of a record. |
| upload_photo(***[request](record.md#filebodywrapper)***, module_api_name, id)  To upload a photo to a record. |
| delete_photo(module_api_name, id) | To delete the photo of a record. |
| mass_update_records(***[request](record.md#massupdatebodywrapper)***, module_api_name) | To update the same field for multiple records in a module. |
| get_mass_update_status(***[param_instance](../parameter_map.md#parametermap)***, module_api_name) | To get the status of the mass update job scheduled previously. |
----

### Inner Static Classes

| Class                                    |
| :--------------------------------------- |
| [GetRecordParam](#getrecordparam) |
| [GetRecordHeader](#getrecordheader) |
| [DeleteRecordParam](#deleterecordparam) |
| [GetRecordsParam](#getrecordsparam) |
| [GetRecordsHeader](#getrecordsheader) |
| [DeleteRecordsParam](#deleterecordsparam) |
| [GetDeletedRecordsParam](#getdeletedrecordsparam) |
| [GetDeletedRecordsHeader](#getdeletedrecordsheader) |
| [SearchRecordsParam](#searchrecordsparam) |
| [GetMassUpdateStatusParam](#getmassupdatestatusparam) |
----

[source](../../src/com/zoho/crm/api/record/record_operations.rb)

## MassUpdate

Structure representing the result of a Mass Update operation.

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| status | The method to get the value of ***MassUpdate status*** |
| status=***[status](../util/choice.md#choice&lt;t>)*** | The method to set the value of ***MassUpdate status*** |
| failed_count | The method to get the value of ***MassUpdate failed_count*** |
| failed_count=failed_count | The method to set the value of ***MassUpdate failed_count*** |
| updated_count | The method to get the value of ***MassUpdate updated_count*** |
| updated_count=updated_count | The method to set the value of ***MassUpdate updated_count*** |
| not_updated_count | The method to get the value of ***MassUpdate not_updated_count*** |
| not_updated_count=not_updated_count | The method to set the value of ***MassUpdate not_updated_count*** |
| total_count | The method to get the value of ***MassUpdate total_count*** |
| total_count=total_count | The method to set the value of ***MassUpdate total_count*** |
----

[source](../../src/com/zoho/crm/api/record/mass_update.rb)

## Field

Structure containing the default fields of all the default modules.

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| api_name | The method to get the value of ***Field APIName*** |
----

### Inner Static Classes

| Class                                    |
| :--------------------------------------- |
| [Products](#products) |
| [Tasks](#tasks) |
| [Vendors](#vendors) |
| [Calls](#calls) |
| [Leads](#leads) |
| [Deals](#deals) |
| [Campaigns](#campaigns) |
| [Quotes](#quotes) |
| [Invoices](#invoices) |
| [Attachments](#attachments) |
| [Price_Books](#price_books) |
| [Sales_Orders](#sales_orders) |
| [Contacts](#contacts) |
| [Solutions](#solutions) |
| [Events](#events) |
| [Purchase_Orders](#purchase_orders) |
| [Accounts](#accounts) |
| [Cases](#cases) |
| [Notes](#notes) |
----

[source](../../src/com/zoho/crm/api/record/field.rb)

## ActionWrapper

After a successful **API** request, an instance of [ActionWrapper](../../src/com/zoho/crm/api/record/action_wrapper.rb) is returned for **POST**, **PUT** and **DELETE** operations

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| data | The method to get the list of obtained ***ActionResponse*** instances. |
| data=***[data](../../src/com/zoho/crm/api/record/action_response.rb)*** | The method to set the list of obtained ***ActionResponse*** instances. |
----

[source](../../src/com/zoho/crm/api/record/action_wrapper.rb)

## Record

Structure of Zoho CRM [Record](../../src/com/zoho/crm/api/record/record.rb).

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| id | The method to get the value of ***Record id*** |
| id=id | The method to set the value of ***Record id*** |
| created_by | The method to get the value of ***Record created_by*** |
| created_by=***[created_by](users.md#user)*** | The method to set the value of ***Record created_by*** |
| created_time | The method to get the value of ***Record created_time*** |
| created_time=created_time | The method to set the value of ***Record created_time*** |
| modified_by | The method to get the value of ***Record modified_by*** |
| modified_by=***[modified_by](users.md#user)*** | The method to set the value of ***Record modified_by*** |
| modified_time | The method to get the value of ***Record modified_time*** |
| modified_time=modified_time | The method to set the value of ***Record modified_time*** |
| tag | The method to get the list of obtained ***Tag*** instances. |
| tag=***[tag](tags.md#tag)*** | The method to set the list of obtained ***Tag*** instances. |
| add_field_value(***[field](record.md#field)***, value) | The method to add data with default fields and values |
| add_key_value(api_name, value) | The method to add data with field APIName and value |
| get_key_value(api_name) | The method to obtain the value using Field's APIName |
| get_key_values | The method to obtain the field values. |
----

[source](../../src/com/zoho/crm/api/record/record.rb)

## RemindAt

Structure representing the properties of the reminder set by the user.

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| alarm | The method to get the value of ***RemindAt alarm*** |
| alarm=alarm | The method to set the value of ***RemindAt alarm*** |
----

[source](../../src/com/zoho/crm/api/record/remind_at.rb)

## Participants

Structure representing the properties of a [Participant](../../src/com/zoho/crm/api/record/participants.rb).

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| name | The method to get the value of ***Participants name*** |
| name=name | The method to set the value of ***Participants name*** |
| email | The method to get the value of ***Participants email*** |
| email=email | The method to set the value of ***Participants email*** |
| invited | The method to get the value of ***Participants invited*** |
| invited=invited | The method to set the value of ***Participants invited*** |
| type | The method to get the value of ***Participants type*** |
| type=type | The method to set the value of ***Participants type*** |
| participant | The method to get the value of ***Participants participant*** |
| participant=participant | The method to set the value of ***Participants participant*** |
| status | The method to get the value of ***Participants status*** |
| status=status | The method to set the value of ***Participants status*** |
----

[source](../../src/com/zoho/crm/api/record/participants.rb)

## ConvertBodyWrapper

Structure that serves as the request for Lead Convert operation

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| data | The method to get the list of obtained ***LeadConverter*** instances. |
| data=***[data](record.md#leadconverter)*** | The method to set the list of obtained ***LeadConverter*** instances. |
----

[source](../../src/com/zoho/crm/api/record/convert_body_wrapper.rb)

## MassUpdateResponseWrapper

After a successful **API** request, an instance of [MassUpdateResponseWrapper](../../src/com/zoho/crm/api/record/mass_update_response_wrapper.rb) is returned for GET MassUpdate Status operation.

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| data | The method to get the list of obtained ***MassUpdateResponse*** instances. |
| data=***[data](../../src/com/zoho/crm/api/record/mass_update_response.rb)*** | The method to set the list of obtained ***MassUpdateResponse*** instances. |
----

[source](../../src/com/zoho/crm/api/record/mass_update_response_wrapper.rb)

## FileDetails

Structure representing the properties of the FileUpload field.

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| extn | The method to get the value of ***FileDetails extn*** |
| extn=extn | The method to set the value of ***FileDetails extn*** |
| is_preview_available | The method to get the value of ***FileDetails is_preview_available*** |
| is_preview_available=is_preview_available | The method to set the value of ***FileDetails is_preview_available*** |
| download_url | The method to get the value of ***FileDetails download_url*** |
| download_url=download_url | The method to set the value of ***FileDetails download_url*** |
| delete_url | The method to get the value of ***FileDetails delete_url*** |
| delete_url=delete_url | The method to set the value of ***FileDetails delete_url*** |
| entity_id | The method to get the value of ***FileDetails entity_id*** |
| entity_id=entity_id | The method to set the value of ***FileDetails entity_id*** |
| mode | The method to get the value of ***FileDetails mode*** |
| mode=mode | The method to set the value of ***FileDetails mode*** |
| original_size_byte | The method to get the value of ***FileDetails original_size_byte*** |
| original_size_byte=original_size_byte | The method to set the value of ***FileDetails original_size_byte*** |
| preview_url | The method to get the value of ***FileDetails preview_url*** |
| preview_url=preview_url | The method to set the value of ***FileDetails preview_url*** |
| file_name | The method to get the value of ***FileDetails file_name*** |
| file_name=file_name | The method to set the value of ***FileDetails file_name*** |
| file_id | The method to get the value of ***FileDetails file_id*** |
| file_id=file_id | The method to set the value of ***FileDetails file_id*** |
| attachment_id | The method to get the value of ***FileDetails attachment_id*** |
| attachment_id=attachment_id | The method to set the value of ***FileDetails attachment_id*** |
| file_size | The method to get the value of ***FileDetails file_size*** |
| file_size=file_size | The method to set the value of ***FileDetails file_size*** |
| creator_id | The method to get the value of ***FileDetails creator_id*** |
| creator_id=creator_id | The method to set the value of ***FileDetails creator_id*** |
| link_docs | The method to get the value of ***FileDetails link_docs*** |
| link_docs=link_docs | The method to set the value of ***FileDetails link_docs*** |
| delete | The method to get the value of ***FileDetails delete*** |
| delete=delete | The method to set the value of ***FileDetails delete*** |
----

[source](../../src/com/zoho/crm/api/record/file_details.rb)

## Reminder

Structure representing the properties of the reminder set by the user for the Participants

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| period | The method to get the value of ***Reminder period*** |
| period=period | The method to set the value of ***Reminder period*** |
| unit | The method to get the value of ***Reminder unit*** |
| unit=unit | The method to set the value of ***Reminder unit*** |
----

[source](../../src/com/zoho/crm/api/record/reminder.rb)

## DeletedRecordsWrapper

After a successful **API** request, an instance of [DeletedRecordsWrapper](../../src/com/zoho/crm/api/record/deleted_records_wrapper.rb) is returned for the GET Deleted Records operation.

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| data | The method to get the list of obtained ***DeletedRecord*** instances. |
| data=***[data](record.md#deletedrecord)*** | The method to set the list of obtained ***DeletedRecord*** instances. |
| info | The method to get the value of ***DeletedRecordsWrapper info*** |
| info=***[info](record.md#info)*** | The method to set the value of ***DeletedRecordsWrapper info*** |
----

[source](../../src/com/zoho/crm/api/record/deleted_records_wrapper.rb)

## DeletedRecord

Structure representing the properties of [DeletedRecord](../../src/com/zoho/crm/api/record/deleted_record.rb).

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| deleted_by | The method to get the value of ***DeletedRecord deleted_by*** |
| deleted_by=***[deleted_by](users.md#user)*** | The method to set the value of ***DeletedRecord deleted_by*** |
| id | The method to get the value of ***DeletedRecord id*** |
| id=id | The method to set the value of ***DeletedRecord id*** |
| display_name | The method to get the value of ***DeletedRecord display_name*** |
| display_name=display_name | The method to set the value of ***DeletedRecord display_name*** |
| type | The method to get the value of ***DeletedRecord type*** |
| type=type | The method to set the value of ***DeletedRecord type*** |
| created_by | The method to get the value of ***DeletedRecord created_by*** |
| created_by=***[created_by](users.md#user)*** | The method to set the value of ***DeletedRecord created_by*** |
| deleted_time | The method to get the value of ***DeletedRecord deleted_time*** |
| deleted_time=deleted_time | The method to set the value of ***DeletedRecord deleted_time*** |
----

[source](../../src/com/zoho/crm/api/record/deleted_record.rb)

## LineTax

Structure representing the properties of Tax.

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| percentage | The method to get the value of ***LineTax percentage*** |
| percentage=percentage | The method to set the value of ***LineTax percentage*** |
| name | The method to get the value of ***LineTax name*** |
| name=name | The method to set the value of ***LineTax name*** |
| id | The method to get the value of ***LineTax id*** |
| id=id | The method to set the value of ***LineTax id*** |
| value | The method to get the value of ***LineTax value*** |
| value=value | The method to set the value of ***LineTax value*** |
----

[source](../../src/com/zoho/crm/api/record/line_tax.rb)

## RecurringActivity

Structure representing the properties of a [RecurringActivity](../../src/com/zoho/crm/api/record/recurring_activity.rb).

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| rrule | The method to get the value of ***RecurringActivity rrule*** |
| rrule=rrule | The method to set the value of ***RecurringActivity rrule*** |
----

[source](../../src/com/zoho/crm/api/record/recurring_activity.rb)

## LineItemProduct

Structure representing the properties of Product in Line Items of Inventory modules.

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| product_code | The method to get the value of ***LineItemProduct product_code*** |
| product_code=product_code | The method to set the value of ***LineItemProduct product_code*** |
| currency | The method to get the value of ***LineItemProduct currency*** |
| currency=currency | The method to set the value of ***LineItemProduct currency*** |
| name | The method to get the value of ***LineItemProduct name*** |
| name=name | The method to set the value of ***LineItemProduct name*** |
----

[source](../../src/com/zoho/crm/api/record/line_item_product.rb)

## Comment

Structure representing the properties of Comment.

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| commented_by | The method to get the value of ***Comment commented_by*** |
| commented_by=commented_by | The method to set the value of ***Comment commented_by*** |
| commented_time | The method to get the value of ***Comment commented_time*** |
| commented_time=commented_time | The method to set the value of ***Comment commented_time*** |
| comment_content | The method to get the value of ***Comment comment_content*** |
| comment_content=comment_content | The method to set the value of ***Comment comment_content*** |
| id | The method to get the value of ***Comment id*** |
| id=id | The method to set the value of ***Comment id*** |
----

[source](../../src/com/zoho/crm/api/record/comment.rb)

## MassUpdateSuccessResponse

After a successful MassUpdate request, an instance of [MassUpdateSuccessResponse](../../src/com/zoho/crm/api/record/mass_update_success_response.rb) is returned.

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| status | The method to get the value of ***MassUpdateSuccessResponse status*** |
| status=***[status](../util/choice.md#choice&lt;t>)*** | The method to set the value of ***MassUpdateSuccessResponse status*** |
| code | The method to get the value of ***MassUpdateSuccessResponse code*** |
| code=***[code](../util/choice.md#choice&lt;t>)*** | The method to set the value of ***MassUpdateSuccessResponse code*** |
| message | The method to get the value of ***MassUpdateSuccessResponse message*** |
| message=***[message](../util/choice.md#choice&lt;t>)*** | The method to set the value of ***MassUpdateSuccessResponse message*** |
| details | The method to get the value of ***MassUpdateSuccessResponse details*** |
| details=details | The method to set the value of ***MassUpdateSuccessResponse details*** |
----

[source](../../src/com/zoho/crm/api/record/mass_update_success_response.rb)

## PricingDetails

Structure representing the properties of [PricingDetail](../../src/com/zoho/crm/api/record/pricing_details.rb).

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| to_range | The method to get the value of ***PricingDetails to_range*** |
| to_range=to_range | The method to set the value of ***PricingDetails to_range*** |
| discount | The method to get the value of ***PricingDetails discount*** |
| discount=discount | The method to set the value of ***PricingDetails discount*** |
| from_range | The method to get the value of ***PricingDetails from_range*** |
| from_range=from_range | The method to set the value of ***PricingDetails from_range*** |
----

[source](../../src/com/zoho/crm/api/record/pricing_details.rb)

## GetRecordParam

Contains all possible parameters for the [Get Record operation](../../src/com/zoho/crm/api/record/record_operations.rb).

### Fields

| Field                      | Description                                        |
| :------------------------- | :------------------------------------------------- |
| approved | Represents `approved` parameter |
| converted | Represents `converted` parameter |
| cvid | Represents `cvid` parameter |
| uid | Represents `uid` parameter |
| fields | Represents `fields` parameter |
| startDateTime | Represents `startDateTime` parameter |
| endDateTime | Represents `endDateTime` parameter |
| territory_id | Represents `territory_id` parameter |
| include_child | Represents `include_child` parameter |
----

## GetRecordHeader

Contains all possible headers for the [Get Record operation](../../src/com/zoho/crm/api/record/record_operations.rb).

### Fields

| Field                      | Description                                        |
| :------------------------- | :------------------------------------------------- |
| If_Modified_Since | Represents `If-Modified-Since` parameter |
----

## DeleteRecordParam

Contains all possible parameters for the [Delete Record operation](../../src/com/zoho/crm/api/record/record_operations.rb).

### Fields

| Field                      | Description                                        |
| :------------------------- | :------------------------------------------------- |
| wf_trigger | Represents `wf_trigger` parameter |
----

## GetRecordsParam

Contains all possible parameters for the [Get Records operation](../../src/com/zoho/crm/api/record/record_operations.rb).

### Fields

| Field                      | Description                                        |
| :------------------------- | :------------------------------------------------- |
| approved | Represents `approved` parameter |
| converted | Represents `converted` parameter |
| cvid | Represents `cvid` parameter |
| ids | Represents `ids` parameter |
| uid | Represents `uid` parameter |
| fields | Represents `fields` parameter |
| sort_by | Represents `sort_by` parameter |
| sort_order | Represents `sort_order` parameter |
| page | Represents `page` parameter |
| per_page | Represents `per_page` parameter |
| startDateTime | Represents `startDateTime` parameter |
| endDateTime | Represents `endDateTime` parameter |
| territory_id | Represents `territory_id` parameter |
| include_child | Represents `include_child` parameter |
----

## GetRecordsHeader

Contains all possible headers for the [Get Records operation](../../src/com/zoho/crm/api/record/record_operations.rb).

### Fields

| Field                      | Description                                        |
| :------------------------- | :------------------------------------------------- |
| If_Modified_Since | Represents `If-Modified-Since` parameter |
----

## DeleteRecordsParam

Contains all possible parameters for the [Delete Records operation](../../src/com/zoho/crm/api/record/record_operations.rb).

### Fields

| Field                      | Description                                        |
| :------------------------- | :------------------------------------------------- |
| ids | Represents `ids` parameter |
| wf_trigger | Represents `wf_trigger` parameter |
----

## GetDeletedRecordsParam

Contains all possible parameters for the [Get Deleted Records operation](../../src/com/zoho/crm/api/record/record_operations.rb).

### Fields

| Field                      | Description                                        |
| :------------------------- | :------------------------------------------------- |
| type | Represents `type` parameter |
| page | Represents `page` parameter |
| per_page | Represents `per_page` parameter |
----

## GetDeletedRecordsHeader

Contains all possible headers for the [Get Deleted Records operation](../../src/com/zoho/crm/api/record/record_operations.rb).

### Fields

| Field                      | Description                                        |
| :------------------------- | :------------------------------------------------- |
| If_Modified_Since | Represents `If-Modified-Since` parameter |
----

## SearchRecordsParam

### Fields

| Field                      | Description                                        |
| :------------------------- | :------------------------------------------------- |
| criteria | Represents `criteria` parameter |
| email | Represents `email` parameter |
| phone | Represents `phone` parameter |
| word | Represents `word` parameter |
| converted | Represents `converted` parameter |
| approved | Represents `approved` parameter |
| page | Represents `page` parameter |
| per_page |  Represents `per_page` parameter |
----

## GetMassUpdateStatusParam

### Fields

| Field                      | Description                                        |
| :------------------------- | :------------------------------------------------- |
| job_id | Represents `job_id` parameter |
----
