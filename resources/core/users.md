# Users

The Zoho CRM [Users API](https://www.zoho.com/crm/developer/docs/api/get-users.html) reference provides information about the possible operations on **Users**.

## Classes

| Class                 | Extends Classes |
| :-------------------- | :-------------- |
| [ActionWrapper](#actionwrapper) |  |
| [SuccessResponse](#successresponse) |  |
| [UsersOperations](#usersoperations) |  |
| [ResponseWrapper](#responsewrapper) |  |
| [Territory](#territory) |  |
| [CustomizeInfo](#customizeinfo) |  |
| [Theme](#theme) |  |
| [BodyWrapper](#bodywrapper) |  |
| [Info](#info) |  |
| [Shift](#shift) |  |
| [RequestWrapper](#requestwrapper) |  |
| [User](#user) | [Record](record.md#record-1) |
| [APIException](#apiexception) |  |
| [TabTheme](#tabtheme) |  |

----

## ActionWrapper

After a successful **API** request, an instance of [ActionWrapper](../../src/com/zoho/crm/api/users/action_wrapper.rb) is returned for **POST**, **PUT** and **DELETE** operations

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| users | The method to get the list of obtained ***ActionResponse*** instances. |
| users=***[users](../../src/com/zoho/crm/api/users/action_response.rb)*** | The method to set the list of obtained ***ActionResponse*** instances. |
----

[source](../../src/com/zoho/crm/api/users/action_wrapper.rb)

## SuccessResponse

After a successful **POST**, **PUT** or **DELETE** operation, an instance of [SuccessResponse](../../src/com/zoho/crm/api/users/success_response.rb) is returned.

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

[source](../../src/com/zoho/crm/api/users/success_response.rb)

## UsersOperations

Contains methods for all possible [Users operations](../../src/com/zoho/crm/api/users/users_operations.rb).

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| get_users(***[param_instance](../parameter_map.md#parametermap)***, ***[header_instance](../header_map.md#headermap)***) | To get the list of users in your organization. |
| create_user(***[request](users.md#requestwrapper)***) | To add a user to your organization. |
| update_users(***[request](users.md#bodywrapper)***) | To update the existing users of your organization. |
| get_user(***[header_instance](../header_map.md#headermap)***, id) | To get the details of a specific user. |
| update_user(***[request](users.md#bodywrapper)***, id) | To update the details of a specific user. |
| delete_user(id) | To delete a specific user from your organization. |
----

### Inner Static Classes

| Class                                    |
| :--------------------------------------- |
| [GetUsersParam](#getusersparam) |
| [GetUsersHeader](#getusersheader) |
| [GetUserHeader](#getuserheader) |
----

[source](../../src/com/zoho/crm/api/users/users_operations.rb)

## ResponseWrapper

After a successful **API** request, an instance of [ResponseWrapper](../../src/com/zoho/crm/api/users/response_wrapper.rb) is returned for GET operations

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| users | The method to get the list of obtained ***User*** instances. |
| users=***[users](users.md#user)*** | The method to set the list of obtained ***User*** instances. |
| info | The method to get the value of ***ResponseWrapper info*** |
| info=***[info](users.md#info)*** | The method to set the value of ***ResponseWrapper info*** |
----

[source](../../src/com/zoho/crm/api/users/response_wrapper.rb)

## Territory

Structure representing the properties of the territory, to which the user is associated.

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| manager | The method to get the value of ***Territory manager*** |
| manager=manager | The method to set the value of ***Territory manager*** |
| name | The method to get the value of ***Territory name*** |
| name=name | The method to set the value of ***Territory name*** |
| id | The method to get the value of ***Territory id*** |
| id=id | The method to set the value of ***Territory id*** |
----

[source](../../src/com/zoho/crm/api/users/territory.rb)

## CustomizeInfo

Structure representing the properties of the User's customization information

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| notes_desc | The method to get the value of ***CustomizeInfo notes_desc*** |
| notes_desc=notes_desc | The method to set the value of ***CustomizeInfo notes_desc*** |
| show_right_panel | The method to get the value of ***CustomizeInfo show_right_panel*** |
| show_right_panel=show_right_panel | The method to set the value of ***CustomizeInfo show_right_panel*** |
| bc_view | The method to get the value of ***CustomizeInfo bc_view*** |
| bc_view=bc_view | The method to set the value of ***CustomizeInfo bc_view*** |
| show_home | The method to get the value of ***CustomizeInfo show_home*** |
| show_home=show_home | The method to set the value of ***CustomizeInfo show_home*** |
| show_detail_view | The method to get the value of ***CustomizeInfo show_detail_view*** |
| show_detail_view=show_detail_view | The method to set the value of ***CustomizeInfo show_detail_view*** |
| unpin_recent_item | The method to get the value of ***CustomizeInfo unpin_recent_item*** |
| unpin_recent_item=unpin_recent_item | The method to set the value of ***CustomizeInfo unpin_recent_item*** |
----

[source](../../src/com/zoho/crm/api/users/customize_info.rb)

## Theme

Structure representing the user's [Theme](../../src/com/zoho/crm/api/users/theme.rb).

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| normal_tab | The method to get the value of ***Theme normal_tab*** |
| normal_tab=***[normal_tab](users.md#tabtheme)*** | The method to set the value of ***Theme normal_tab*** |
| selected_tab | The method to get the value of ***Theme selected_tab*** |
| selected_tab=***[selected_tab](users.md#tabtheme)*** | The method to set the value of ***Theme selected_tab*** |
| new_background | The method to get the value of ***Theme new_background*** |
| new_background=new_background | The method to set the value of ***Theme new_background*** |
| background | The method to get the value of ***Theme background*** |
| background=background | The method to set the value of ***Theme background*** |
| screen | The method to get the value of ***Theme screen*** |
| screen=screen | The method to set the value of ***Theme screen*** |
| type | The method to get the value of ***Theme type*** |
| type=type | The method to set the value of ***Theme type*** |
----

[source](../../src/com/zoho/crm/api/users/theme.rb)

## BodyWrapper

A structure that contains all possible keys of a single request.

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| users | The method to get the list of obtained ***User*** instances. |
| users=***[users](users.md#user)*** | The method to set the list of obtained ***User*** instances. |
----

[source](../../src/com/zoho/crm/api/users/body_wrapper.rb)

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

[source](../../src/com/zoho/crm/api/users/info.rb)

## Shift

Structure representing the User's shift information.

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| id | The method to get the value of ***Shift id*** |
| id=id | The method to set the value of ***Shift id*** |
| name | The method to get the value of ***Shift name*** |
| name=name | The method to set the value of ***Shift name*** |
----

[source](../../src/com/zoho/crm/api/users/shift.rb)

## RequestWrapper

A structure that contains all possible keys of a single request.

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| users | The method to get the list of obtained ***User*** instances. |
| users=***[users](users.md#user)*** | The method to set the list of obtained ***User*** instances. |
----

[source](../../src/com/zoho/crm/api/users/request_wrapper.rb)

## User

Structure of Zoho CRM [User](../../src/com/zoho/crm/api/users/user.rb).

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| country | The method to get the value of ***User country*** |
| country=country | The method to set the value of ***User country*** |
| customize_info | The method to get the value of ***User customize_info*** |
| customize_info=***[customize_info](users.md#customizeinfo)*** | The method to set the value of ***User customize_info*** |
| role | The method to get the value of ***User role*** |
| role=***[role](roles.md#role)*** | The method to set the value of ***User role*** |
| signature | The method to get the value of ***User signature*** |
| signature=signature | The method to set the value of ***User signature*** |
| city | The method to get the value of ***User city*** |
| city=city | The method to set the value of ***User city*** |
| name_format | The method to get the value of ***User name_format*** |
| name_format=name_format | The method to set the value of ***User name_format*** |
| personal_account | The method to get the value of ***User personal_account*** |
| personal_account=personal_account | The method to set the value of ***User personal_account*** |
| default_tab_group | The method to get the value of ***User default_tab_group*** |
| default_tab_group=default_tab_group | The method to set the value of ***User default_tab_group*** |
| language | The method to get the value of ***User language*** |
| language=language | The method to set the value of ***User language*** |
| locale | The method to get the value of ***User locale*** |
| locale=locale | The method to set the value of ***User locale*** |
| microsoft | The method to get the value of ***User microsoft*** |
| microsoft=microsoft | The method to set the value of ***User microsoft*** |
| isonline | The method to get the value of ***User isonline*** |
| isonline=isonline | The method to set the value of ***User isonline*** |
| street | The method to get the value of ***User street*** |
| street=street | The method to set the value of ***User street*** |
| currency | The method to get the value of ***User currency*** |
| currency=currency | The method to set the value of ***User currency*** |
| alias | The method to get the value of ***User alias_1*** |
| alias=alias_1 | The method to set the value of ***User alias_1*** |
| theme | The method to get the value of ***User theme*** |
| theme=***[theme](users.md#theme)*** | The method to set the value of ***User theme*** |
| state | The method to get the value of ***User state*** |
| state=state | The method to set the value of ***User state*** |
| fax | The method to get the value of ***User fax*** |
| fax=fax | The method to set the value of ***User fax*** |
| country_locale | The method to get the value of ***User country_locale*** |
| country_locale=country_locale | The method to set the value of ***User country_locale*** |
| first_name | The method to get the value of ***User first_name*** |
| first_name=first_name | The method to set the value of ***User first_name*** |
| email | The method to get the value of ***User email*** |
| email=email | The method to set the value of ***User email*** |
| reporting_to | The method to get the value of ***User reporting_to*** |
| reporting_to=***[reporting_to](users.md#user)*** | The method to set the value of ***User reporting_to*** |
| decimal_separator | The method to get the value of ***User decimal_separator*** |
| decimal_separator=decimal_separator | The method to set the value of ***User decimal_separator*** |
| zip | The method to get the value of ***User zip*** |
| zip=zip | The method to set the value of ***User zip*** |
| website | The method to get the value of ***User website*** |
| website=website | The method to set the value of ***User website*** |
| time_format | The method to get the value of ***User time_format*** |
| time_format=time_format | The method to set the value of ***User time_format*** |
| offset | The method to get the value of ***User offset*** |
| offset=offset | The method to set the value of ***User offset*** |
| profile | The method to get the value of ***User profile*** |
| profile=***[profile](profiles.md#profile)*** | The method to set the value of ***User profile*** |
| mobile | The method to get the value of ***User mobile*** |
| mobile=mobile | The method to set the value of ***User mobile*** |
| last_name | The method to get the value of ***User last_name*** |
| last_name=last_name | The method to set the value of ***User last_name*** |
| time_zone | The method to get the value of ***User time_zone*** |
| time_zone=time_zone | The method to set the value of ***User time_zone*** |
| zuid | The method to get the value of ***User zuid*** |
| zuid=zuid | The method to set the value of ***User zuid*** |
| confirm | The method to get the value of ***User confirm*** |
| confirm=confirm | The method to set the value of ***User confirm*** |
| full_name | The method to get the value of ***User full_name*** |
| full_name=full_name | The method to set the value of ***User full_name*** |
| territories | The method to get the list of obtained ***Territory*** instances. |
| territories=***[territories](users.md#territory)*** | The method to set the list of obtained ***Territory*** instances. |
| phone | The method to get the value of ***User phone*** |
| phone=phone | The method to set the value of ***User phone*** |
| dob | The method to get the value of ***User dob*** |
| dob=dob | The method to set the value of ***User dob*** |
| date_format | The method to get the value of ***User date_format*** |
| date_format=date_format | The method to set the value of ***User date_format*** |
| status | The method to get the value of ***User status*** |
| status=status | The method to set the value of ***User status*** |
| name | The method to get the value of ***User name*** |
| name=name | The method to set the value of ***User name*** |
----

[source](../../src/com/zoho/crm/api/users/user.rb)

## APIException

Whenever the **API** returns an error response, an instance of [APIException](../../src/com/zoho/crm/api/users/api_exception.rb) is returned for all operations.

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

[source](../../src/com/zoho/crm/api/users/api_exception.rb)

## TabTheme

Structure representing the user's customized tab information.

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| font_color | The method to get the value of ***TabTheme font_color*** |
| font_color=font_color | The method to set the value of ***TabTheme font_color*** |
| background | The method to get the value of ***TabTheme background*** |
| background=background | The method to set the value of ***TabTheme background*** |
----

[source](../../src/com/zoho/crm/api/users/tab_theme.rb)

## GetUsersParam

Contains all possible parameters for the [Get Users operation](../../src/com/zoho/crm/api/users/users_operations.rb).

### Fields

| Field                      | Description                                        |
| :------------------------- | :------------------------------------------------- |
| type | Represents `type` parameter |
| page | Represents `page` parameter |
| per_page | Represents `per_page` parameter |
----

## GetUsersHeader

Contains all possible headers for the [Get Users operation](../../src/com/zoho/crm/api/users/users_operations.rb).

### Fields

| Field                      | Description                                        |
| :------------------------- | :------------------------------------------------- |
| If_Modified_Since | Represents `If-Modified-Since` parameter |
----

## GetUserHeader

Contains all possible headers for the [Get User operation](../../src/com/zoho/crm/api/users/users_operations.rb).

### Fields

| Field                      | Description                                        |
| :------------------------- | :------------------------------------------------- |
| If_Modified_Since | Represents `If-Modified-Since` parameter |
----
