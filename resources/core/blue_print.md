# BluePrint



## Classes

| Class                 | Extends Classes |
| :-------------------- | :-------------- |
| [Transition](#transition) |  |
| [BluePrint](#blueprint-1) |  |
| [SuccessResponse](#successresponse) |  |
| [BodyWrapper](#bodywrapper) |  |
| [NextTransition](#nexttransition) |  |
| [ProcessInfo](#processinfo) |  |
| [ResponseWrapper](#responsewrapper) |  |
| [BluePrintOperations](#blueprintoperations) |  |
| [APIException](#apiexception) |  |
| [ValidationError](#validationerror) |  |

----

## Transition

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| next_transitions | The method to get the list of obtained ***NextTransition*** instances. |
| next_transitions=***[next_transitions](blue_print.md#nexttransition)*** | The method to set the list of obtained ***NextTransition*** instances. |
| percent_partial_save | The method to get the value of ***Transition percent_partial_save*** |
| percent_partial_save=percent_partial_save | The method to set the value of ***Transition percent_partial_save*** |
| data | The method to get the value of ***Transition data*** |
| data=***[data](record.md#record-1)*** | The method to set the value of ***Transition data*** |
| next_field_value | The method to get the value of ***Transition next_field_value*** |
| next_field_value=next_field_value | The method to set the value of ***Transition next_field_value*** |
| name | The method to get the value of ***Transition name*** |
| name=name | The method to set the value of ***Transition name*** |
| criteria_matched | The method to get the value of ***Transition criteria_matched*** |
| criteria_matched=criteria_matched | The method to set the value of ***Transition criteria_matched*** |
| id | The method to get the value of ***Transition id*** |
| id=id | The method to set the value of ***Transition id*** |
| fields | The method to get the list of obtained ***Field*** instances. |
| fields=***[fields](fields.md#field)*** | The method to set the list of obtained ***Field*** instances. |
| criteria_message | The method to get the value of ***Transition criteria_message*** |
| criteria_message=criteria_message | The method to set the value of ***Transition criteria_message*** |
----

[source](../../src/com/zoho/crm/api/blue_print/transition.rb)

## BluePrint

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| transition_id | The method to get the value of ***BluePrint transition_id*** |
| transition_id=transition_id | The method to set the value of ***BluePrint transition_id*** |
| data | The method to get the value of ***BluePrint data*** |
| data=***[data](record.md#record-1)*** | The method to set the value of ***BluePrint data*** |
| process_info | The method to get the value of ***BluePrint process_info*** |
| process_info=***[process_info](blue_print.md#processinfo)*** | The method to set the value of ***BluePrint process_info*** |
| transitions | The method to get the list of obtained ***Transition*** instances. |
| transitions=***[transitions](blue_print.md#transition)*** | The method to set the list of obtained ***Transition*** instances. |
----

[source](../../src/com/zoho/crm/api/blue_print/blue_print.rb)

## SuccessResponse

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

[source](../../src/com/zoho/crm/api/blue_print/success_response.rb)

## BodyWrapper

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| blueprint | The method to get the list of obtained ***BluePrint*** instances. |
| blueprint=***[blueprint](blue_print.md#blueprint)*** | The method to set the list of obtained ***BluePrint*** instances. |
----

[source](../../src/com/zoho/crm/api/blue_print/body_wrapper.rb)

## NextTransition

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| id | The method to get the value of ***NextTransition id*** |
| id=id | The method to set the value of ***NextTransition id*** |
| name | The method to get the value of ***NextTransition name*** |
| name=name | The method to set the value of ***NextTransition name*** |
----

[source](../../src/com/zoho/crm/api/blue_print/next_transition.rb)

## ProcessInfo

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| field_id | The method to get the value of ***ProcessInfo field_id*** |
| field_id=field_id | The method to set the value of ***ProcessInfo field_id*** |
| is_continuous | The method to get the value of ***ProcessInfo is_continuous*** |
| is_continuous=is_continuous | The method to set the value of ***ProcessInfo is_continuous*** |
| api_name | The method to get the value of ***ProcessInfo api_name*** |
| api_name=api_name | The method to set the value of ***ProcessInfo api_name*** |
| continuous | The method to get the value of ***ProcessInfo continuous*** |
| continuous=continuous | The method to set the value of ***ProcessInfo continuous*** |
| field_label | The method to get the value of ***ProcessInfo field_label*** |
| field_label=field_label | The method to set the value of ***ProcessInfo field_label*** |
| name | The method to get the value of ***ProcessInfo name*** |
| name=name | The method to set the value of ***ProcessInfo name*** |
| column_name | The method to get the value of ***ProcessInfo column_name*** |
| column_name=column_name | The method to set the value of ***ProcessInfo column_name*** |
| field_value | The method to get the value of ***ProcessInfo field_value*** |
| field_value=field_value | The method to set the value of ***ProcessInfo field_value*** |
| id | The method to get the value of ***ProcessInfo id*** |
| id=id | The method to set the value of ***ProcessInfo id*** |
| field_name | The method to get the value of ***ProcessInfo field_name*** |
| field_name=field_name | The method to set the value of ***ProcessInfo field_name*** |
----

[source](../../src/com/zoho/crm/api/blue_print/process_info.rb)

## ResponseWrapper

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| blueprint | The method to get the value of ***ResponseWrapper blueprint*** |
| blueprint=***[blueprint](blue_print.md#blueprint)*** | The method to set the value of ***ResponseWrapper blueprint*** |
----

[source](../../src/com/zoho/crm/api/blue_print/response_wrapper.rb)

## BluePrintOperations

### Constructors

| Constructor                                                   | Description                                                                     |
| :------------------------------------------------------------ | :------------------------------------------------------------------------------ |
| initialize(module_api_name, record_id) |  |
----

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| get_blueprint |  |
| update_blueprint(***[request](blue_print.md#bodywrapper)***) |  |
----

[source](../../src/com/zoho/crm/api/blue_print/blue_print_operations.rb)

## APIException

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

[source](../../src/com/zoho/crm/api/blue_print/api_exception.rb)

## ValidationError

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| api_name | The method to get the value of ***ValidationError api_name*** |
| api_name=api_name | The method to set the value of ***ValidationError api_name*** |
| message | The method to get the value of ***ValidationError message*** |
| message=message | The method to set the value of ***ValidationError message*** |
----

[source](../../src/com/zoho/crm/api/blue_print/validation_error.rb)

