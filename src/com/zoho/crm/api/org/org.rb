require_relative '../util/model'

module Org
  class Org
    include Util::Model

    # Creates an instance of Org
    def initialize
      @country = nil
      @photo_id = nil
      @city = nil
      @description = nil
      @mc_status = nil
      @gapps_enabled = nil
      @domain_name = nil
      @translation_enabled = nil
      @street = nil
      @alias_1 = nil
      @currency = nil
      @id = nil
      @state = nil
      @fax = nil
      @employee_count = nil
      @zip = nil
      @website = nil
      @currency_symbol = nil
      @mobile = nil
      @currency_locale = nil
      @primary_zuid = nil
      @zia_portal_id = nil
      @time_zone = nil
      @zgid = nil
      @country_code = nil
      @license_details = nil
      @phone = nil
      @company_name = nil
      @privacy_settings = nil
      @primary_email = nil
      @iso_code = nil
      @key_modified = Hash.new
    end

      # The method to get the country
      # @return A String value

    def country
      @country
    end

      # The method to set the value to country
      # @param country [String] A String

    def country=(country)
      if country!=nil and !country.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: country EXPECTED TYPE: String', nil, nil)
      end
      @country = country
      @key_modified['country'] = 1
    end

      # The method to get the photo_id
      # @return A String value

    def photo_id
      @photo_id
    end

      # The method to set the value to photo_id
      # @param photo_id [String] A String

    def photo_id=(photo_id)
      if photo_id!=nil and !photo_id.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: photo_id EXPECTED TYPE: String', nil, nil)
      end
      @photo_id = photo_id
      @key_modified['photo_id'] = 1
    end

      # The method to get the city
      # @return A String value

    def city
      @city
    end

      # The method to set the value to city
      # @param city [String] A String

    def city=(city)
      if city!=nil and !city.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: city EXPECTED TYPE: String', nil, nil)
      end
      @city = city
      @key_modified['city'] = 1
    end

      # The method to get the description
      # @return A String value

    def description
      @description
    end

      # The method to set the value to description
      # @param description [String] A String

    def description=(description)
      if description!=nil and !description.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: description EXPECTED TYPE: String', nil, nil)
      end
      @description = description
      @key_modified['description'] = 1
    end

      # The method to get the mc_status
      # @return A Boolean value

    def mc_status
      @mc_status
    end

      # The method to set the value to mc_status
      # @param mc_status [Boolean] A Boolean

    def mc_status=(mc_status)
      if mc_status!=nil and ! [true, false].include?mc_status
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: mc_status EXPECTED TYPE: Boolean', nil, nil)
      end
      @mc_status = mc_status
      @key_modified['mc_status'] = 1
    end

      # The method to get the gapps_enabled
      # @return A Boolean value

    def gapps_enabled
      @gapps_enabled
    end

      # The method to set the value to gapps_enabled
      # @param gapps_enabled [Boolean] A Boolean

    def gapps_enabled=(gapps_enabled)
      if gapps_enabled!=nil and ! [true, false].include?gapps_enabled
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: gapps_enabled EXPECTED TYPE: Boolean', nil, nil)
      end
      @gapps_enabled = gapps_enabled
      @key_modified['gapps_enabled'] = 1
    end

      # The method to get the domain_name
      # @return A String value

    def domain_name
      @domain_name
    end

      # The method to set the value to domain_name
      # @param domain_name [String] A String

    def domain_name=(domain_name)
      if domain_name!=nil and !domain_name.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: domain_name EXPECTED TYPE: String', nil, nil)
      end
      @domain_name = domain_name
      @key_modified['domain_name'] = 1
    end

      # The method to get the translation_enabled
      # @return A Boolean value

    def translation_enabled
      @translation_enabled
    end

      # The method to set the value to translation_enabled
      # @param translation_enabled [Boolean] A Boolean

    def translation_enabled=(translation_enabled)
      if translation_enabled!=nil and ! [true, false].include?translation_enabled
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: translation_enabled EXPECTED TYPE: Boolean', nil, nil)
      end
      @translation_enabled = translation_enabled
      @key_modified['translation_enabled'] = 1
    end

      # The method to get the street
      # @return A String value

    def street
      @street
    end

      # The method to set the value to street
      # @param street [String] A String

    def street=(street)
      if street!=nil and !street.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: street EXPECTED TYPE: String', nil, nil)
      end
      @street = street
      @key_modified['street'] = 1
    end

      # The method to get the alias
      # @return A String value

    def alias
      @alias_1
    end

      # The method to set the value to alias
      # @param alias_1 [String] A String

    def alias=(alias_1)
      if alias_1!=nil and !alias_1.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: alias_1 EXPECTED TYPE: String', nil, nil)
      end
      @alias_1 = alias_1
      @key_modified['alias'] = 1
    end

      # The method to get the currency
      # @return A String value

    def currency
      @currency
    end

      # The method to set the value to currency
      # @param currency [String] A String

    def currency=(currency)
      if currency!=nil and !currency.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: currency EXPECTED TYPE: String', nil, nil)
      end
      @currency = currency
      @key_modified['currency'] = 1
    end

      # The method to get the id
      # @return A Integer value

    def id
      @id
    end

      # The method to set the value to id
      # @param id [Integer] A Integer

    def id=(id)
      if id!=nil and !id.is_a? Integer
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: id EXPECTED TYPE: Integer', nil, nil)
      end
      @id = id
      @key_modified['id'] = 1
    end

      # The method to get the state
      # @return A String value

    def state
      @state
    end

      # The method to set the value to state
      # @param state [String] A String

    def state=(state)
      if state!=nil and !state.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: state EXPECTED TYPE: String', nil, nil)
      end
      @state = state
      @key_modified['state'] = 1
    end

      # The method to get the fax
      # @return A String value

    def fax
      @fax
    end

      # The method to set the value to fax
      # @param fax [String] A String

    def fax=(fax)
      if fax!=nil and !fax.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: fax EXPECTED TYPE: String', nil, nil)
      end
      @fax = fax
      @key_modified['fax'] = 1
    end

      # The method to get the employee_count
      # @return A String value

    def employee_count
      @employee_count
    end

      # The method to set the value to employee_count
      # @param employee_count [String] A String

    def employee_count=(employee_count)
      if employee_count!=nil and !employee_count.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: employee_count EXPECTED TYPE: String', nil, nil)
      end
      @employee_count = employee_count
      @key_modified['employee_count'] = 1
    end

      # The method to get the zip
      # @return A String value

    def zip
      @zip
    end

      # The method to set the value to zip
      # @param zip [String] A String

    def zip=(zip)
      if zip!=nil and !zip.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: zip EXPECTED TYPE: String', nil, nil)
      end
      @zip = zip
      @key_modified['zip'] = 1
    end

      # The method to get the website
      # @return A String value

    def website
      @website
    end

      # The method to set the value to website
      # @param website [String] A String

    def website=(website)
      if website!=nil and !website.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: website EXPECTED TYPE: String', nil, nil)
      end
      @website = website
      @key_modified['website'] = 1
    end

      # The method to get the currency_symbol
      # @return A String value

    def currency_symbol
      @currency_symbol
    end

      # The method to set the value to currency_symbol
      # @param currency_symbol [String] A String

    def currency_symbol=(currency_symbol)
      if currency_symbol!=nil and !currency_symbol.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: currency_symbol EXPECTED TYPE: String', nil, nil)
      end
      @currency_symbol = currency_symbol
      @key_modified['currency_symbol'] = 1
    end

      # The method to get the mobile
      # @return A String value

    def mobile
      @mobile
    end

      # The method to set the value to mobile
      # @param mobile [String] A String

    def mobile=(mobile)
      if mobile!=nil and !mobile.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: mobile EXPECTED TYPE: String', nil, nil)
      end
      @mobile = mobile
      @key_modified['mobile'] = 1
    end

      # The method to get the currency_locale
      # @return A String value

    def currency_locale
      @currency_locale
    end

      # The method to set the value to currency_locale
      # @param currency_locale [String] A String

    def currency_locale=(currency_locale)
      if currency_locale!=nil and !currency_locale.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: currency_locale EXPECTED TYPE: String', nil, nil)
      end
      @currency_locale = currency_locale
      @key_modified['currency_locale'] = 1
    end

      # The method to get the primary_zuid
      # @return A String value

    def primary_zuid
      @primary_zuid
    end

      # The method to set the value to primary_zuid
      # @param primary_zuid [String] A String

    def primary_zuid=(primary_zuid)
      if primary_zuid!=nil and !primary_zuid.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: primary_zuid EXPECTED TYPE: String', nil, nil)
      end
      @primary_zuid = primary_zuid
      @key_modified['primary_zuid'] = 1
    end

      # The method to get the zia_portal_id
      # @return A String value

    def zia_portal_id
      @zia_portal_id
    end

      # The method to set the value to zia_portal_id
      # @param zia_portal_id [String] A String

    def zia_portal_id=(zia_portal_id)
      if zia_portal_id!=nil and !zia_portal_id.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: zia_portal_id EXPECTED TYPE: String', nil, nil)
      end
      @zia_portal_id = zia_portal_id
      @key_modified['zia_portal_id'] = 1
    end

      # The method to get the time_zone
      # @return A String value

    def time_zone
      @time_zone
    end

      # The method to set the value to time_zone
      # @param time_zone [String] A String

    def time_zone=(time_zone)
      if time_zone!=nil and !time_zone.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: time_zone EXPECTED TYPE: String', nil, nil)
      end
      @time_zone = time_zone
      @key_modified['time_zone'] = 1
    end

      # The method to get the zgid
      # @return A String value

    def zgid
      @zgid
    end

      # The method to set the value to zgid
      # @param zgid [String] A String

    def zgid=(zgid)
      if zgid!=nil and !zgid.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: zgid EXPECTED TYPE: String', nil, nil)
      end
      @zgid = zgid
      @key_modified['zgid'] = 1
    end

      # The method to get the country_code
      # @return A String value

    def country_code
      @country_code
    end

      # The method to set the value to country_code
      # @param country_code [String] A String

    def country_code=(country_code)
      if country_code!=nil and !country_code.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: country_code EXPECTED TYPE: String', nil, nil)
      end
      @country_code = country_code
      @key_modified['country_code'] = 1
    end

      # The method to get the license_details
      # @return An instance of LicenseDetails

    def license_details
      @license_details
    end

      # The method to set the value to license_details
      # @param license_details [LicenseDetails] An instance of LicenseDetails

    def license_details=(license_details)
      if license_details!=nil and !license_details.is_a? LicenseDetails
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: license_details EXPECTED TYPE: LicenseDetails', nil, nil)
      end
      @license_details = license_details
      @key_modified['license_details'] = 1
    end

      # The method to get the phone
      # @return A String value

    def phone
      @phone
    end

      # The method to set the value to phone
      # @param phone [String] A String

    def phone=(phone)
      if phone!=nil and !phone.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: phone EXPECTED TYPE: String', nil, nil)
      end
      @phone = phone
      @key_modified['phone'] = 1
    end

      # The method to get the company_name
      # @return A String value

    def company_name
      @company_name
    end

      # The method to set the value to company_name
      # @param company_name [String] A String

    def company_name=(company_name)
      if company_name!=nil and !company_name.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: company_name EXPECTED TYPE: String', nil, nil)
      end
      @company_name = company_name
      @key_modified['company_name'] = 1
    end

      # The method to get the privacy_settings
      # @return A Boolean value

    def privacy_settings
      @privacy_settings
    end

      # The method to set the value to privacy_settings
      # @param privacy_settings [Boolean] A Boolean

    def privacy_settings=(privacy_settings)
      if privacy_settings!=nil and ! [true, false].include?privacy_settings
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: privacy_settings EXPECTED TYPE: Boolean', nil, nil)
      end
      @privacy_settings = privacy_settings
      @key_modified['privacy_settings'] = 1
    end

      # The method to get the primary_email
      # @return A String value

    def primary_email
      @primary_email
    end

      # The method to set the value to primary_email
      # @param primary_email [String] A String

    def primary_email=(primary_email)
      if primary_email!=nil and !primary_email.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: primary_email EXPECTED TYPE: String', nil, nil)
      end
      @primary_email = primary_email
      @key_modified['primary_email'] = 1
    end

      # The method to get the iso_code
      # @return A String value

    def iso_code
      @iso_code
    end

      # The method to set the value to iso_code
      # @param iso_code [String] A String

    def iso_code=(iso_code)
      if iso_code!=nil and !iso_code.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: iso_code EXPECTED TYPE: String', nil, nil)
      end
      @iso_code = iso_code
      @key_modified['iso_code'] = 1
    end

      # The method to check if the user has modified the given key
      # @param key [String] A String
      # @return A Integer value

    def is_key_modified(key)
      if key!=nil and !key.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: key EXPECTED TYPE: String', nil, nil)
      end
      if @key_modified.key?(key)
        return @key_modified[key]
      end

      nil
    end

      # The method to mark the given key as modified
      # @param key [String] A String
      # @param modification [Integer] A Integer

    def set_key_modified(key, modification)
      if key!=nil and !key.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: key EXPECTED TYPE: String', nil, nil)
      end
      if modification!=nil and !modification.is_a? Integer
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: modification EXPECTED TYPE: Integer', nil, nil)
      end
      @key_modified[key] = modification
    end

  end
end
