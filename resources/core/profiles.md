# Profiles

The Zoho CRM [Profiles API](https://www.zoho.com/crm/developer/docs/api/get-profiles.html) reference provides information about the possible operations on **Profiles**.

## Classes

| Class                 | Extends Classes |
| :-------------------- | :-------------- |
| [APIException](#apiexception) |  |
| [Category](#category) |  |
| [Profile](#profile) |  |
| [PermissionDetail](#permissiondetail) |  |
| [Section](#section) |  |
| [ProfilesOperations](#profilesoperations) |  |
| [ResponseWrapper](#responsewrapper) |  |

----

## APIException

Whenever the **API** returns an error response, an instance of [APIException](../../src/com/zoho/crm/api/profiles/api_exception.rb) is returned for all operations.

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

[source](../../src/com/zoho/crm/api/profiles/api_exception.rb)

## Category

Structure representing the category properties of each Section.

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| display_label | The method to get the value of ***Category display_label*** |
| display_label=display_label | The method to set the value of ***Category display_label*** |
| permissions_details | The method to get the value of ***Category permissions_details*** |
| permissions_details=permissions_details | The method to set the value of ***Category permissions_details*** |
| name | The method to get the value of ***Category name*** |
| name=name | The method to set the value of ***Category name*** |
----

[source](../../src/com/zoho/crm/api/profiles/category.rb)

## Profile

Structure of Zoho CRM [Profile](../../src/com/zoho/crm/api/profiles/profile.rb).

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| display_label | The method to get the value of ***Profile display_label*** |
| display_label=display_label | The method to set the value of ***Profile display_label*** |
| created_time | The method to get the value of ***Profile created_time*** |
| created_time=created_time | The method to set the value of ***Profile created_time*** |
| modified_time | The method to get the value of ***Profile modified_time*** |
| modified_time=modified_time | The method to set the value of ***Profile modified_time*** |
| permissions_details | The method to get the list of obtained ***PermissionDetail*** instances. |
| permissions_details=***[permissions_details](profiles.md#permissiondetail)*** | The method to set the list of obtained ***PermissionDetail*** instances. |
| name | The method to get the value of ***Profile name*** |
| name=name | The method to set the value of ***Profile name*** |
| modified_by | The method to get the value of ***Profile modified_by*** |
| modified_by=***[modified_by](users.md#user)*** | The method to set the value of ***Profile modified_by*** |
| default | The method to get the value of ***Profile default*** |
| default=default | The method to set the value of ***Profile default*** |
| description | The method to get the value of ***Profile description*** |
| description=description | The method to set the value of ***Profile description*** |
| id | The method to get the value of ***Profile id*** |
| id=id | The method to set the value of ***Profile id*** |
| category | The method to get the value of ***Profile category*** |
| category=category | The method to set the value of ***Profile category*** |
| created_by | The method to get the value of ***Profile created_by*** |
| created_by=***[created_by](users.md#user)*** | The method to set the value of ***Profile created_by*** |
| sections | The method to get the list of obtained ***Section*** instances. |
| sections=***[sections](profiles.md#section)*** | The method to set the list of obtained ***Section*** instances. |
| delete | The method to get the value of ***Profile delete*** |
| delete=delete | The method to set the value of ***Profile delete*** |
----

[source](../../src/com/zoho/crm/api/profiles/profile.rb)

## PermissionDetail

Structure representing the Permission properties of the Profile

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| display_label | The method to get the value of ***PermissionDetail display_label*** |
| display_label=display_label | The method to set the value of ***PermissionDetail display_label*** |
| module | The method to get the value of ***PermissionDetail module_1*** |
| module=module_1 | The method to set the value of ***PermissionDetail module_1*** |
| name | The method to get the value of ***PermissionDetail name*** |
| name=name | The method to set the value of ***PermissionDetail name*** |
| id | The method to get the value of ***PermissionDetail id*** |
| id=id | The method to set the value of ***PermissionDetail id*** |
| enabled | The method to get the value of ***PermissionDetail enabled*** |
| enabled=enabled | The method to set the value of ***PermissionDetail enabled*** |
----

[source](../../src/com/zoho/crm/api/profiles/permission_detail.rb)

## Section

Structure that represents the Profile's section.

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| name | The method to get the value of ***Section name*** |
| name=name | The method to set the value of ***Section name*** |
| categories | The method to get the list of obtained ***Category*** instances. |
| categories=***[categories](profiles.md#category)*** | The method to set the list of obtained ***Category*** instances. |
----

[source](../../src/com/zoho/crm/api/profiles/section.rb)

## ProfilesOperations

Contains methods for all possible [Profiles operations](../../src/com/zoho/crm/api/profiles/profiles_operations.rb).

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| get_profiles | To get the list of profiles available for your organization. |
| get_profile(id) | To get the details of a specific profile. |
----

[source](../../src/com/zoho/crm/api/profiles/profiles_operations.rb)

## ResponseWrapper

After a successful **API** request, an instance of [ResponseWrapper](../../src/com/zoho/crm/api/profiles/response_wrapper.rb) is returned for GET operations

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| profiles | The method to get the list of obtained ***Profile*** instances. |
| profiles=***[profiles](profiles.md#profile)*** | The method to set the list of obtained ***Profile*** instances. |
----

[source](../../src/com/zoho/crm/api/profiles/response_wrapper.rb)
