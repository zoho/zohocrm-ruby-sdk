# Org

The Zoho CRM [Organization API](https://www.zoho.com/crm/developer/docs/api/get-org-data.html) reference provides information about the possible operations on **Organization**.

## Classes

| Class                 | Extends Classes |
| :-------------------- | :-------------- |
| [SuccessResponse](#successresponse) |  |
| [ResponseWrapper](#responsewrapper) |  |
| [Org](#org-1) |  |
| [OrgOperations](#orgoperations) |  |
| [LicenseDetails](#licensedetails) |  |
| [APIException](#apiexception) |  |
| [FileBodyWrapper](#filebodywrapper) |  |

----

## SuccessResponse

After a successful **POST**, **PUT** or **DELETE** operation, an instance of [SuccessResponse](../../src/com/zoho/crm/api/org/success_response.rb) is returned.

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

[source](../../src/com/zoho/crm/api/org/success_response.rb)

## ResponseWrapper

After a successful **API** request, an instance of [ResponseWrapper](../../src/com/zoho/crm/api/org/response_wrapper.rb) is returned for GET operations

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| org | The method to get the list of obtained ***Org*** instances. |
| org=***[org](org.md#org)*** | The method to set the list of obtained ***Org*** instances. |
----

[source](../../src/com/zoho/crm/api/org/response_wrapper.rb)

## Org

Structure of Zoho CRM [Org](../../src/com/zoho/crm/api/org/org.rb).

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| country | The method to get the value of ***Org country*** |
| country=country | The method to set the value of ***Org country*** |
| photo_id | The method to get the value of ***Org photo_id*** |
| photo_id=photo_id | The method to set the value of ***Org photo_id*** |
| city | The method to get the value of ***Org city*** |
| city=city | The method to set the value of ***Org city*** |
| description | The method to get the value of ***Org description*** |
| description=description | The method to set the value of ***Org description*** |
| mc_status | The method to get the value of ***Org mc_status*** |
| mc_status=mc_status | The method to set the value of ***Org mc_status*** |
| gapps_enabled | The method to get the value of ***Org gapps_enabled*** |
| gapps_enabled=gapps_enabled | The method to set the value of ***Org gapps_enabled*** |
| domain_name | The method to get the value of ***Org domain_name*** |
| domain_name=domain_name | The method to set the value of ***Org domain_name*** |
| translation_enabled | The method to get the value of ***Org translation_enabled*** |
| translation_enabled=translation_enabled | The method to set the value of ***Org translation_enabled*** |
| street | The method to get the value of ***Org street*** |
| street=street | The method to set the value of ***Org street*** |
| alias | The method to get the value of ***Org alias_1*** |
| alias=alias_1 | The method to set the value of ***Org alias_1*** |
| currency | The method to get the value of ***Org currency*** |
| currency=currency | The method to set the value of ***Org currency*** |
| id | The method to get the value of ***Org id*** |
| id=id | The method to set the value of ***Org id*** |
| state | The method to get the value of ***Org state*** |
| state=state | The method to set the value of ***Org state*** |
| fax | The method to get the value of ***Org fax*** |
| fax=fax | The method to set the value of ***Org fax*** |
| employee_count | The method to get the value of ***Org employee_count*** |
| employee_count=employee_count | The method to set the value of ***Org employee_count*** |
| zip | The method to get the value of ***Org zip*** |
| zip=zip | The method to set the value of ***Org zip*** |
| website | The method to get the value of ***Org website*** |
| website=website | The method to set the value of ***Org website*** |
| currency_symbol | The method to get the value of ***Org currency_symbol*** |
| currency_symbol=currency_symbol | The method to set the value of ***Org currency_symbol*** |
| mobile | The method to get the value of ***Org mobile*** |
| mobile=mobile | The method to set the value of ***Org mobile*** |
| currency_locale | The method to get the value of ***Org currency_locale*** |
| currency_locale=currency_locale | The method to set the value of ***Org currency_locale*** |
| primary_zuid | The method to get the value of ***Org primary_zuid*** |
| primary_zuid=primary_zuid | The method to set the value of ***Org primary_zuid*** |
| zia_portal_id | The method to get the value of ***Org zia_portal_id*** |
| zia_portal_id=zia_portal_id | The method to set the value of ***Org zia_portal_id*** |
| time_zone | The method to get the value of ***Org time_zone*** |
| time_zone=time_zone | The method to set the value of ***Org time_zone*** |
| zgid | The method to get the value of ***Org zgid*** |
| zgid=zgid | The method to set the value of ***Org zgid*** |
| country_code | The method to get the value of ***Org country_code*** |
| country_code=country_code | The method to set the value of ***Org country_code*** |
| license_details | The method to get the value of ***Org license_details*** |
| license_details=***[license_details](org.md#licensedetails)*** | The method to set the value of ***Org license_details*** |
| phone | The method to get the value of ***Org phone*** |
| phone=phone | The method to set the value of ***Org phone*** |
| company_name | The method to get the value of ***Org company_name*** |
| company_name=company_name | The method to set the value of ***Org company_name*** |
| privacy_settings | The method to get the value of ***Org privacy_settings*** |
| privacy_settings=privacy_settings | The method to set the value of ***Org privacy_settings*** |
| primary_email | The method to get the value of ***Org primary_email*** |
| primary_email=primary_email | The method to set the value of ***Org primary_email*** |
| iso_code | The method to get the value of ***Org iso_code*** |
| iso_code=iso_code | The method to set the value of ***Org iso_code*** |
----

[source](../../src/com/zoho/crm/api/org/org.rb)

## OrgOperations

Contains methods for all possible [Org operations](../../src/com/zoho/crm/api/org/org_operations.rb).

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| get_organization | To get the details of your organization. |
| upload_organization_photo(***[request](org.md#filebodywrapper)***) | To upload a photo of your organization. |
----

[source](../../src/com/zoho/crm/api/org/org_operations.rb)

## LicenseDetails

Strucuture representing the details of the CRM license.

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| paid_expiry | The method to get the value of ***LicenseDetails paid_expiry*** |
| paid_expiry=paid_expiry | The method to set the value of ***LicenseDetails paid_expiry*** |
| users_license_purchased | The method to get the value of ***LicenseDetails users_license_purchased*** |
| users_license_purchased=users_license_purchased | The method to set the value of ***LicenseDetails users_license_purchased*** |
| trial_type | The method to get the value of ***LicenseDetails trial_type*** |
| trial_type=trial_type | The method to set the value of ***LicenseDetails trial_type*** |
| trial_expiry | The method to get the value of ***LicenseDetails trial_expiry*** |
| trial_expiry=trial_expiry | The method to set the value of ***LicenseDetails trial_expiry*** |
| paid | The method to get the value of ***LicenseDetails paid*** |
| paid=paid | The method to set the value of ***LicenseDetails paid*** |
| paid_type | The method to get the value of ***LicenseDetails paid_type*** |
| paid_type=paid_type | The method to set the value of ***LicenseDetails paid_type*** |
----

[source](../../src/com/zoho/crm/api/org/license_details.rb)

## APIException

Whenever the **API** returns an error response, an instance of [APIException](../../src/com/zoho/crm/api/org/api_exception.rb) is returned for all operations.

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

[source](../../src/com/zoho/crm/api/org/api_exception.rb)

## FileBodyWrapper

Serves as the request for Photo upload operation.

### Methods

| Method                     | Description                                        |
| :------------------------- | :------------------------------------------------- |
| file | The method to get the value of ***FileBodyWrapper file*** |
| file=***[file](../util/stream_wrapper.md#streamwrapper)*** | The method to set the value of ***FileBodyWrapper file*** |
----

[source](../../src/com/zoho/crm/api/org/file_body_wrapper.rb)
