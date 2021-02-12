# Fields

The Zoho CRM [Fields Meta Data API](https://www.zoho.com/crm/developer/docs/api/field-meta.html) reference provides information about the possible operations on **Fields**.

## Classes

| Class                 | Extends Classes |
| :-------------------- | :-------------- |
| [RelatedDetails](#relateddetails) |  |
| [Field](#field) |  |
| [Unique](#unique) |  |
| [Crypt](#crypt) |  |
| [ViewType](#viewtype) |  |
| [AutoNumber](#autonumber) |  |
| [MultiSelectLookup](#multiselectlookup) |  |
| [PickListValue](#picklistvalue) |  |
| [ResponseWrapper](#responsewrapper) |  |
| [ToolTip](#tooltip) |  |
| [Currency](#currency) |  |
| [Formula](#formula) |  |
| [LookupField](#lookupfield) |  |
| [APIException](#apiexception) |  |
| [Module](#module) |  |
| [AssociationDetails](#associationdetails) |  |
| [FieldsOperations](#fieldsoperations) |  |

----

## RelatedDetails

Structure representing the properties of field's module.

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| display_label | The method to get the value of ***RelatedDetails display_label*** |
| display_label=display_label | The method to set the value of ***RelatedDetails display_label*** |
| api_name | The method to get the value of ***RelatedDetails api_name*** |
| api_name=api_name | The method to set the value of ***RelatedDetails api_name*** |
| module | The method to get the value of ***RelatedDetails module_1*** |
| module=***[module_1](fields.md#module)*** | The method to set the value of ***RelatedDetails module_1*** |
| id | The method to get the value of ***RelatedDetails id*** |
| id=id | The method to set the value of ***RelatedDetails id*** |
| type | The method to get the value of ***RelatedDetails type*** |
| type=type | The method to set the value of ***RelatedDetails type*** |
----

[source](../../src/com/zoho/crm/api/fields/related_details.rb)

## Field

Structure of Zoho CRM [Field](../../src/com/zoho/crm/api/fields/field.rb).

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| system_mandatory | The method to get the value of ***Field system_mandatory*** |
| system_mandatory=system_mandatory | The method to set the value of ***Field system_mandatory*** |
| webhook | The method to get the value of ***Field webhook*** |
| webhook=webhook | The method to set the value of ***Field webhook*** |
| layouts | The method to get the value of ***Field layouts*** |
| layouts=***[layouts](layouts.md#layout)*** | The method to set the value of ***Field layouts*** |
| content | The method to get the value of ***Field content*** |
| content=content | The method to set the value of ***Field content*** |
| column_name | The method to get the value of ***Field column_name*** |
| column_name=column_name | The method to set the value of ***Field column_name*** |
| type | The method to get the value of ***Field type*** |
| type=type | The method to set the value of ***Field type*** |
| transition_sequence | The method to get the value of ***Field transition_sequence*** |
| transition_sequence=transition_sequence | The method to set the value of ***Field transition_sequence*** |
| personality_name | The method to get the value of ***Field personality_name*** |
| personality_name=personality_name | The method to set the value of ***Field personality_name*** |
| message | The method to get the value of ***Field message*** |
| message=message | The method to set the value of ***Field message*** |
| mandatory | The method to get the value of ***Field mandatory*** |
| mandatory=mandatory | The method to set the value of ***Field mandatory*** |
| criteria | The method to get the value of ***Field criteria*** |
| criteria=***[criteria](custom_views.md#criteria)*** | The method to set the value of ***Field criteria*** |
| related_details | The method to get the value of ***Field related_details*** |
| related_details=***[related_details](fields.md#relateddetails)*** | The method to set the value of ***Field related_details*** |
| json_type | The method to get the value of ***Field json_type*** |
| json_type=json_type | The method to set the value of ***Field json_type*** |
| crypt | The method to get the value of ***Field crypt*** |
| crypt=***[crypt](fields.md#crypt)*** | The method to set the value of ***Field crypt*** |
| field_label | The method to get the value of ***Field field_label*** |
| field_label=field_label | The method to set the value of ***Field field_label*** |
| tooltip | The method to get the value of ***Field tooltip*** |
| tooltip=***[tooltip](fields.md#tooltip)*** | The method to set the value of ***Field tooltip*** |
| created_source | The method to get the value of ***Field created_source*** |
| created_source=created_source | The method to set the value of ***Field created_source*** |
| field_read_only | The method to get the value of ***Field field_read_only*** |
| field_read_only=field_read_only | The method to set the value of ***Field field_read_only*** |
| display_label | The method to get the value of ***Field display_label*** |
| display_label=display_label | The method to set the value of ***Field display_label*** |
| read_only | The method to get the value of ***Field read_only*** |
| read_only=read_only | The method to set the value of ***Field read_only*** |
| association_details | The method to get the value of ***Field association_details*** |
| association_details=***[association_details](fields.md#associationdetails)*** | The method to set the value of ***Field association_details*** |
| quick_sequence_number | The method to get the value of ***Field quick_sequence_number*** |
| quick_sequence_number=quick_sequence_number | The method to set the value of ***Field quick_sequence_number*** |
| businesscard_supported | The method to get the value of ***Field businesscard_supported*** |
| businesscard_supported=businesscard_supported | The method to set the value of ***Field businesscard_supported*** |
| multi_module_lookup | The method to get the value of ***Field multi_module_lookup*** |
| multi_module_lookup=multi_module_lookup | The method to set the value of ***Field multi_module_lookup*** |
| currency | The method to get the value of ***Field currency*** |
| currency=***[currency](fields.md#currency)*** | The method to set the value of ***Field currency*** |
| id | The method to get the value of ***Field id*** |
| id=id | The method to set the value of ***Field id*** |
| custom_field | The method to get the value of ***Field custom_field*** |
| custom_field=custom_field | The method to set the value of ***Field custom_field*** |
| lookup | The method to get the value of ***Field lookup*** |
| lookup=***[lookup](fields.md#module)*** | The method to set the value of ***Field lookup*** |
| visible | The method to get the value of ***Field visible*** |
| visible=visible | The method to set the value of ***Field visible*** |
| length | The method to get the value of ***Field length*** |
| length=length | The method to set the value of ***Field length*** |
| view_type | The method to get the value of ***Field view_type*** |
| view_type=***[view_type](fields.md#viewtype)*** | The method to set the value of ***Field view_type*** |
| subform | The method to get the value of ***Field subform*** |
| subform=***[subform](fields.md#module)*** | The method to set the value of ***Field subform*** |
| api_name | The method to get the value of ***Field api_name*** |
| api_name=api_name | The method to set the value of ***Field api_name*** |
| unique | The method to get the value of ***Field unique*** |
| unique=***[unique](fields.md#unique)*** | The method to set the value of ***Field unique*** |
| history_tracking | The method to get the value of ***Field history_tracking*** |
| history_tracking=history_tracking | The method to set the value of ***Field history_tracking*** |
| data_type | The method to get the value of ***Field data_type*** |
| data_type=data_type | The method to set the value of ***Field data_type*** |
| formula | The method to get the value of ***Field formula*** |
| formula=***[formula](fields.md#formula)*** | The method to set the value of ***Field formula*** |
| decimal_place | The method to get the value of ***Field decimal_place*** |
| decimal_place=decimal_place | The method to set the value of ***Field decimal_place*** |
| mass_update | The method to get the value of ***Field mass_update*** |
| mass_update=mass_update | The method to set the value of ***Field mass_update*** |
| blueprint_supported | The method to get the value of ***Field blueprint_supported*** |
| blueprint_supported=blueprint_supported | The method to set the value of ***Field blueprint_supported*** |
| multiselectlookup | The method to get the value of ***Field multiselectlookup*** |
| multiselectlookup=***[multiselectlookup](fields.md#multiselectlookup)*** | The method to set the value of ***Field multiselectlookup*** |
| pick_list_values | The method to get the list of obtained ***PickListValue*** instances. |
| pick_list_values=***[pick_list_values](fields.md#picklistvalue)*** | The method to set the list of obtained ***PickListValue*** instances. |
| auto_number | The method to get the value of ***Field auto_number*** |
| auto_number=***[auto_number](fields.md#autonumber)*** | The method to set the value of ***Field auto_number*** |
| default_value | The method to get the value of ***Field default_value*** |
| default_value=default_value | The method to set the value of ***Field default_value*** |
| section_id | The method to get the value of ***Field section_id*** |
| section_id=section_id | The method to set the value of ***Field section_id*** |
| validation_rule | The method to get the value of ***Field validation_rule*** |
| validation_rule=validation_rule | The method to set the value of ***Field validation_rule*** |
| convert_mapping | The method to get the value of ***Field convert_mapping*** |
| convert_mapping=convert_mapping | The method to set the value of ***Field convert_mapping*** |
----

[source](../../src/com/zoho/crm/api/fields/field.rb)

## Unique

Structure representing the field's properties, if the field is unique.

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| casesensitive | The method to get the value of ***Unique casesensitive*** |
| casesensitive=casesensitive | The method to set the value of ***Unique casesensitive*** |
----

[source](../../src/com/zoho/crm/api/fields/unique.rb)

## Crypt

Structure representing the properties of an encrypted field.

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| mode | The method to get the value of ***Crypt mode*** |
| mode=mode | The method to set the value of ***Crypt mode*** |
| column | The method to get the value of ***Crypt column*** |
| column=column | The method to set the value of ***Crypt column*** |
| encfldids | The method to get the value of ***Crypt encfldids*** |
| encfldids=encfldids | The method to set the value of ***Crypt encfldids*** |
| notify | The method to get the value of ***Crypt notify*** |
| notify=notify | The method to set the value of ***Crypt notify*** |
| table | The method to get the value of ***Crypt table*** |
| table=table | The method to set the value of ***Crypt table*** |
| status | The method to get the value of ***Crypt status*** |
| status=status | The method to set the value of ***Crypt status*** |
----

[source](../../src/com/zoho/crm/api/fields/crypt.rb)

## ViewType

Structure representing the properties of the field's [ViewType](../../src/com/zoho/crm/api/fields/view_type.rb).

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| view | The method to get the value of ***ViewType view*** |
| view=view | The method to set the value of ***ViewType view*** |
| edit | The method to get the value of ***ViewType edit*** |
| edit=edit | The method to set the value of ***ViewType edit*** |
| create | The method to get the value of ***ViewType create*** |
| create=create | The method to set the value of ***ViewType create*** |
| quick_create | The method to get the value of ***ViewType quick_create*** |
| quick_create=quick_create | The method to set the value of ***ViewType quick_create*** |
----

[source](../../src/com/zoho/crm/api/fields/view_type.rb)

## AutoNumber

Structure representing the properties of an [auto-number](../../src/com/zoho/crm/api/fields/auto_number.rb) field.

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| prefix | The method to get the value of ***AutoNumber prefix*** |
| prefix=prefix | The method to set the value of ***AutoNumber prefix*** |
| suffix | The method to get the value of ***AutoNumber suffix*** |
| suffix=suffix | The method to set the value of ***AutoNumber suffix*** |
| start_number | The method to get the value of ***AutoNumber start_number*** |
| start_number=start_number | The method to set the value of ***AutoNumber start_number*** |
----

[source](../../src/com/zoho/crm/api/fields/auto_number.rb)

## MultiSelectLookup

Structure representing the properties of a [MultiSelectLookup](../../src/com/zoho/crm/api/fields/multi_select_lookup.rb) field.

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| display_label | The method to get the value of ***MultiSelectLookup display_label*** |
| display_label=display_label | The method to set the value of ***MultiSelectLookup display_label*** |
| linking_module | The method to get the value of ***MultiSelectLookup linking_module*** |
| linking_module=linking_module | The method to set the value of ***MultiSelectLookup linking_module*** |
| lookup_apiname | The method to get the value of ***MultiSelectLookup lookup_apiname*** |
| lookup_apiname=lookup_apiname | The method to set the value of ***MultiSelectLookup lookup_apiname*** |
| api_name | The method to get the value of ***MultiSelectLookup api_name*** |
| api_name=api_name | The method to set the value of ***MultiSelectLookup api_name*** |
| connectedlookup_apiname | The method to get the value of ***MultiSelectLookup connectedlookup_apiname*** |
| connectedlookup_apiname=connectedlookup_apiname | The method to set the value of ***MultiSelectLookup connectedlookup_apiname*** |
| id | The method to get the value of ***MultiSelectLookup id*** |
| id=id | The method to set the value of ***MultiSelectLookup id*** |
----

[source](../../src/com/zoho/crm/api/fields/multi_select_lookup.rb)

## PickListValue

Structure representing the properties of each option in a PickList field

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| display_value | The method to get the value of ***PickListValue display_value*** |
| display_value=display_value | The method to set the value of ***PickListValue display_value*** |
| sequence_number | The method to get the value of ***PickListValue sequence_number*** |
| sequence_number=sequence_number | The method to set the value of ***PickListValue sequence_number*** |
| expected_data_type | The method to get the value of ***PickListValue expected_data_type*** |
| expected_data_type=expected_data_type | The method to set the value of ***PickListValue expected_data_type*** |
| maps | The method to get the list of obtained ***Object*** instances. |
| maps=maps | The method to set the list of obtained ***Object*** instances. |
| actual_value | The method to get the value of ***PickListValue actual_value*** |
| actual_value=actual_value | The method to set the value of ***PickListValue actual_value*** |
| sys_ref_name | The method to get the value of ***PickListValue sys_ref_name*** |
| sys_ref_name=sys_ref_name | The method to set the value of ***PickListValue sys_ref_name*** |
| type | The method to get the value of ***PickListValue type*** |
| type=type | The method to set the value of ***PickListValue type*** |
----

[source](../../src/com/zoho/crm/api/fields/pick_list_value.rb)

## ResponseWrapper

After a successful **API** request, and instance of [ResponseWrapper](../../src/com/zoho/crm/api/fields/response_wrapper.rb) is returned for GET operations

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| fields | The method to get the list of obtained ***Field*** instances. |
| fields=***[fields](fields.md#field)*** | The method to set the list of obtained ***Field*** instances. |
----

[source](../../src/com/zoho/crm/api/fields/response_wrapper.rb)

## ToolTip

Structure representing the properties of the field's tool tip.

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| name | The method to get the value of ***ToolTip name*** |
| name=name | The method to set the value of ***ToolTip name*** |
| value | The method to get the value of ***ToolTip value*** |
| value=value | The method to set the value of ***ToolTip value*** |
----

[source](../../src/com/zoho/crm/api/fields/tool_tip.rb)

## Currency

Structure representing the properties of a [currency](../../src/com/zoho/crm/api/fields/currency.rb) field.

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| rounding_option | The method to get the value of ***Currency rounding_option*** |
| rounding_option=rounding_option | The method to set the value of ***Currency rounding_option*** |
| precision | The method to get the value of ***Currency precision*** |
| precision=precision | The method to set the value of ***Currency precision*** |
----

[source](../../src/com/zoho/crm/api/fields/currency.rb)

## Formula

Structure representing the properties of a [formula](../../src/com/zoho/crm/api/fields/formula.rb) field.

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| return_type | The method to get the value of ***Formula return_type*** |
| return_type=return_type | The method to set the value of ***Formula return_type*** |
| expression | The method to get the value of ***Formula expression*** |
| expression=expression | The method to set the value of ***Formula expression*** |
----

[source](../../src/com/zoho/crm/api/fields/formula.rb)

## LookupField

Structure containing property of a referred field.

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| id | The method to get the value of ***LookupField id*** |
| id=id | The method to set the value of ***LookupField id*** |
| name | The method to get the value of ***LookupField name*** |
| name=name | The method to set the value of ***LookupField name*** |
----

[source](../../src/com/zoho/crm/api/fields/lookup_field.rb)

## APIException

Whenever the **API** returns an error response, an instance of [APIException](../../src/com/zoho/crm/api/fields/api_exception.rb) is returned for all operations.

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

[source](../../src/com/zoho/crm/api/fields/api_exception.rb)

## Module

Structure representing the properties of the referred [Module](../../src/com/zoho/crm/api/fields/module.rb).

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| layout | The method to get the value of ***Module layout*** |
| layout=***[layout](layouts.md#layout)*** | The method to set the value of ***Module layout*** |
| display_label | The method to get the value of ***Module display_label*** |
| display_label=display_label | The method to set the value of ***Module display_label*** |
| api_name | The method to get the value of ***Module api_name*** |
| api_name=api_name | The method to set the value of ***Module api_name*** |
| module | The method to get the value of ***Module module_1*** |
| module=module_1 | The method to set the value of ***Module module_1*** |
| id | The method to get the value of ***Module id*** |
| id=id | The method to set the value of ***Module id*** |
| module_name | The method to get the value of ***Module module_name*** |
| module_name=module_name | The method to set the value of ***Module module_name*** |
----

[source](../../src/com/zoho/crm/api/fields/module.rb)

## AssociationDetails

Structure representing the Field's association details.

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| lookup_field | The method to get the value of ***AssociationDetails lookup_field*** |
| lookup_field=***[lookup_field](fields.md#lookupfield)*** | The method to set the value of ***AssociationDetails lookup_field*** |
| related_field | The method to get the value of ***AssociationDetails related_field*** |
| related_field=***[related_field](fields.md#lookupfield)*** | The method to set the value of ***AssociationDetails related_field*** |
----

[source](../../src/com/zoho/crm/api/fields/association_details.rb)

## FieldsOperations

Contains methods for all possible [Fields operations](../../src/com/zoho/crm/api/fields/fields_operations.rb).

### Constructors

| Constructor                                                   | Description                                                                     |
| :------------------------------------------------------------ | :------------------------------------------------------------------------------ |
| initialize(module) | Creates a ***FieldsOperations*** class instance with the ***module***. |
----

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| get_fields(***[param_instance](../parameter_map.md#parametermap)***) | To get the meta details of all fields in a module. |
| get_field(id) | To get the meta details of specific field in a module. |
----

### Inner Static Classes

| Class                                    |
| :--------------------------------------- |
| [GetFieldsParam](#getfieldsparam) |
----

[source](../../src/com/zoho/crm/api/fields/fields_operations.rb)

## GetFieldsParam

Contains all possible parameters for the [Get Fields operation](../../src/com/zoho/crm/api/fields/fields_operations.rb).

### Fields

| Field                      | Description                                        |
| :------------------------- | :------------------------------------------------- |
| type | Represents `type` parameter |
----
