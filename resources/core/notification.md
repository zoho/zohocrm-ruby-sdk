# Notification

The Zoho CRM [Notification API](https://www.zoho.com/crm/developer/docs/api/notifications/overview.html) reference provides information about the possible operations on **Notification**.

## Classes

| Class                 | Extends Classes |
| :-------------------- | :-------------- |
| [SuccessResponse](#successresponse) |  |
| [Info](#info) |  |
| [BodyWrapper](#bodywrapper) |  |
| [NotificationOperations](#notificationoperations) |  |
| [APIException](#apiexception) |  |
| [ActionWrapper](#actionwrapper) |  |
| [ResponseWrapper](#responsewrapper) |  |
| [Notification](#notification-1) |  |

----

## SuccessResponse

After a successful **POST**, **PUT** or **DELETE** operation, an instance of [SuccessResponse](../../src/com/zoho/crm/api/notification/success_response.rb) is returned.

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

[source](../../src/com/zoho/crm/api/notification/success_response.rb)

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

[source](../../src/com/zoho/crm/api/notification/info.rb)

## BodyWrapper

A structure that contains all possible keys of a request.

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| watch | The method to get the list of obtained ***Notification*** instances. |
| watch=***[watch](notification.md#notification)*** | The method to set the list of obtained ***Notification*** instances. |
----

[source](../../src/com/zoho/crm/api/notification/body_wrapper.rb)

## NotificationOperations

Contains methods for all possible [Notification operations](../../src/com/zoho/crm/api/notification/notification_operations.rb).

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| enable_notifications(***[request](notification.md#bodywrapper)***) |  |
| get_notification_details(***[param_instance](../parameter_map.md#parametermap)***) |  |
| update_notifications(***[request](notification.md#bodywrapper)***) |  |
| update_notification(***[request](notification.md#bodywrapper)***) |  |
| disable_notifications(***[param_instance](../parameter_map.md#parametermap)***) |  |
| disable_notification(***[request](notification.md#bodywrapper)***) |  |
----

### Inner Static Classes

| Class                                    |
| :--------------------------------------- |
| [GetNotificationDetailsParam](#getnotificationdetailsparam) |
| [DisableNotificationsParam](#disablenotificationsparam) |
----

[source](../../src/com/zoho/crm/api/notification/notification_operations.rb)

## APIException

Whenever the **API** returns an error response, an instance of [APIException](../../src/com/zoho/crm/api/notification/api_exception.rb) is returned for all operations.

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

[source](../../src/com/zoho/crm/api/notification/api_exception.rb)

## ActionWrapper

After a successful **API** request, an instance of [ActionWrapper](../../src/com/zoho/crm/api/notification/action_wrapper.rb) is returned for **POST**, **PUT** and **DELETE** operations.

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| watch | The method to get the list of obtained ***ActionResponse*** instances. |
| watch=***[watch](../../src/com/zoho/crm/api/notification/action_response.rb)*** | The method to set the list of obtained ***ActionResponse*** instances. |
----

[source](../../src/com/zoho/crm/api/notification/action_wrapper.rb)

## ResponseWrapper

After a successful **API** request, an instance of [ResponseWrapper](../../src/com/zoho/crm/api/notification/response_wrapper.rb) is returned for GET operations.

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| watch | The method to get the list of obtained ***Notification*** instances. |
| watch=***[watch](notification.md#notification)*** | The method to set the list of obtained ***Notification*** instances. |
| info | The method to get the value of ***ResponseWrapper info*** |
| info=***[info](notification.md#info)*** | The method to set the value of ***ResponseWrapper info*** |
----

[source](../../src/com/zoho/crm/api/notification/response_wrapper.rb)

## Notification

Structure of Zoho CRM [Notification](../../src/com/zoho/crm/api/notification/notification.rb).

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| channel_expiry | The method to get the value of ***Notification channel_expiry*** |
| channel_expiry=channel_expiry | The method to set the value of ***Notification channel_expiry*** |
| resource_uri | The method to get the value of ***Notification resource_uri*** |
| resource_uri=resource_uri | The method to set the value of ***Notification resource_uri*** |
| resource_id | The method to get the value of ***Notification resource_id*** |
| resource_id=resource_id | The method to set the value of ***Notification resource_id*** |
| notify_url | The method to get the value of ***Notification notify_url*** |
| notify_url=notify_url | The method to set the value of ***Notification notify_url*** |
| resource_name | The method to get the value of ***Notification resource_name*** |
| resource_name=resource_name | The method to set the value of ***Notification resource_name*** |
| channel_id | The method to get the value of ***Notification channel_id*** |
| channel_id=channel_id | The method to set the value of ***Notification channel_id*** |
| events | The method to get the value of ***Notification events*** |
| events=events | The method to set the value of ***Notification events*** |
| token | The method to get the value of ***Notification token*** |
| token=token | The method to set the value of ***Notification token*** |
| notify_on_related_action | The method to get the value of ***Notification notify_on_related_action*** |
| notify_on_related_action=notify_on_related_action | The method to set the value of ***Notification notify_on_related_action*** |
| fields | The method to get the value of ***Notification fields*** |
| fields=fields | The method to set the value of ***Notification fields*** |
| deleteevents | The method to get the value of ***Notification deleteevents*** |
| deleteevents=deleteevents | The method to set the value of ***Notification deleteevents*** |
----

[source](../../src/com/zoho/crm/api/notification/notification.rb)

## GetNotificationDetailsParam

Contains all possible parameters for the [Get Notification Details operation](../../src/com/zoho/crm/api/notification/notification_operations.rb).

### Fields

| Field                      | Description                                        |
| :------------------------- | :------------------------------------------------- |
| page | Represents `page` parameter |
| per_page | Represents `per_page` parameter   |
| channel_id | Represents `channel_id` parameter |
| module_1 | Represents `module` parameter     |
----

## DisableNotificationsParam

Contains all possible parameters for the [Disable Notifications operation](../../src/com/zoho/crm/api/notification/notification_operations.rb).

### Fields

| Field                      | Description                                        |
| :------------------------- | :------------------------------------------------- |
| channel_ids | Represents `channel_ids` parameter |
----
