require_relative '../profiles/profile'
require_relative '../roles/role'
require_relative '../record/record'
require_relative '../util/model'

module Users
  class User < Record::Record
    include Util::Model

    # Creates an instance of User
    def initialize
      super
    end

      # The method to get the country
      # @return A String value

    def country
      get_key_value('country')
    end

      # The method to set the value to country
      # @param country [String] A String

    def country=(country)
      if country!=nil and !country.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: country EXPECTED TYPE: String', nil, nil)
      end
      add_key_value('country', country)
    end

      # The method to get the customize_info
      # @return An instance of CustomizeInfo

    def customize_info
      get_key_value('customize_info')
    end

      # The method to set the value to customize_info
      # @param customize_info [CustomizeInfo] An instance of CustomizeInfo

    def customize_info=(customize_info)
      if customize_info!=nil and !customize_info.is_a? CustomizeInfo
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: customize_info EXPECTED TYPE: CustomizeInfo', nil, nil)
      end
      add_key_value('customize_info', customize_info)
    end

      # The method to get the role
      # @return An instance of Roles::Role

    def role
      get_key_value('role')
    end

      # The method to set the value to role
      # @param role [Roles::Role] An instance of Roles::Role

    def role=(role)
      if role!=nil and !role.is_a? Roles::Role
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: role EXPECTED TYPE: Role', nil, nil)
      end
      add_key_value('role', role)
    end

      # The method to get the signature
      # @return A String value

    def signature
      get_key_value('signature')
    end

      # The method to set the value to signature
      # @param signature [String] A String

    def signature=(signature)
      if signature!=nil and !signature.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: signature EXPECTED TYPE: String', nil, nil)
      end
      add_key_value('signature', signature)
    end

      # The method to get the city
      # @return A String value

    def city
      get_key_value('city')
    end

      # The method to set the value to city
      # @param city [String] A String

    def city=(city)
      if city!=nil and !city.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: city EXPECTED TYPE: String', nil, nil)
      end
      add_key_value('city', city)
    end

      # The method to get the name_format
      # @return A String value

    def name_format
      get_key_value('name_format')
    end

      # The method to set the value to name_format
      # @param name_format [String] A String

    def name_format=(name_format)
      if name_format!=nil and !name_format.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: name_format EXPECTED TYPE: String', nil, nil)
      end
      add_key_value('name_format', name_format)
    end

      # The method to get the personal_account
      # @return A Boolean value

    def personal_account
      get_key_value('personal_account')
    end

      # The method to set the value to personal_account
      # @param personal_account [Boolean] A Boolean

    def personal_account=(personal_account)
      if personal_account!=nil and ! [true, false].include?personal_account
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: personal_account EXPECTED TYPE: Boolean', nil, nil)
      end
      add_key_value('personal_account', personal_account)
    end

      # The method to get the default_tab_group
      # @return A String value

    def default_tab_group
      get_key_value('default_tab_group')
    end

      # The method to set the value to default_tab_group
      # @param default_tab_group [String] A String

    def default_tab_group=(default_tab_group)
      if default_tab_group!=nil and !default_tab_group.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: default_tab_group EXPECTED TYPE: String', nil, nil)
      end
      add_key_value('default_tab_group', default_tab_group)
    end

      # The method to get the language
      # @return A String value

    def language
      get_key_value('language')
    end

      # The method to set the value to language
      # @param language [String] A String

    def language=(language)
      if language!=nil and !language.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: language EXPECTED TYPE: String', nil, nil)
      end
      add_key_value('language', language)
    end

      # The method to get the locale
      # @return A String value

    def locale
      get_key_value('locale')
    end

      # The method to set the value to locale
      # @param locale [String] A String

    def locale=(locale)
      if locale!=nil and !locale.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: locale EXPECTED TYPE: String', nil, nil)
      end
      add_key_value('locale', locale)
    end

      # The method to get the microsoft
      # @return A Boolean value

    def microsoft
      get_key_value('microsoft')
    end

      # The method to set the value to microsoft
      # @param microsoft [Boolean] A Boolean

    def microsoft=(microsoft)
      if microsoft!=nil and ! [true, false].include?microsoft
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: microsoft EXPECTED TYPE: Boolean', nil, nil)
      end
      add_key_value('microsoft', microsoft)
    end

      # The method to get the isonline
      # @return A Boolean value

    def isonline
      get_key_value('Isonline')
    end

      # The method to set the value to isonline
      # @param isonline [Boolean] A Boolean

    def isonline=(isonline)
      if isonline!=nil and ! [true, false].include?isonline
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: isonline EXPECTED TYPE: Boolean', nil, nil)
      end
      add_key_value('Isonline', isonline)
    end

      # The method to get the street
      # @return A String value

    def street
      get_key_value('street')
    end

      # The method to set the value to street
      # @param street [String] A String

    def street=(street)
      if street!=nil and !street.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: street EXPECTED TYPE: String', nil, nil)
      end
      add_key_value('street', street)
    end

      # The method to get the currency
      # @return A String value

    def currency
      get_key_value('Currency')
    end

      # The method to set the value to currency
      # @param currency [String] A String

    def currency=(currency)
      if currency!=nil and !currency.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: currency EXPECTED TYPE: String', nil, nil)
      end
      add_key_value('Currency', currency)
    end

      # The method to get the alias
      # @return A String value

    def alias
      get_key_value('alias')
    end

      # The method to set the value to alias
      # @param alias_1 [String] A String

    def alias=(alias_1)
      if alias_1!=nil and !alias_1.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: alias_1 EXPECTED TYPE: String', nil, nil)
      end
      add_key_value('alias', alias_1)
    end

      # The method to get the theme
      # @return An instance of Theme

    def theme
      get_key_value('theme')
    end

      # The method to set the value to theme
      # @param theme [Theme] An instance of Theme

    def theme=(theme)
      if theme!=nil and !theme.is_a? Theme
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: theme EXPECTED TYPE: Theme', nil, nil)
      end
      add_key_value('theme', theme)
    end

      # The method to get the state
      # @return A String value

    def state
      get_key_value('state')
    end

      # The method to set the value to state
      # @param state [String] A String

    def state=(state)
      if state!=nil and !state.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: state EXPECTED TYPE: String', nil, nil)
      end
      add_key_value('state', state)
    end

      # The method to get the fax
      # @return A String value

    def fax
      get_key_value('fax')
    end

      # The method to set the value to fax
      # @param fax [String] A String

    def fax=(fax)
      if fax!=nil and !fax.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: fax EXPECTED TYPE: String', nil, nil)
      end
      add_key_value('fax', fax)
    end

      # The method to get the country_locale
      # @return A String value

    def country_locale
      get_key_value('country_locale')
    end

      # The method to set the value to country_locale
      # @param country_locale [String] A String

    def country_locale=(country_locale)
      if country_locale!=nil and !country_locale.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: country_locale EXPECTED TYPE: String', nil, nil)
      end
      add_key_value('country_locale', country_locale)
    end

      # The method to get the first_name
      # @return A String value

    def first_name
      get_key_value('first_name')
    end

      # The method to set the value to first_name
      # @param first_name [String] A String

    def first_name=(first_name)
      if first_name!=nil and !first_name.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: first_name EXPECTED TYPE: String', nil, nil)
      end
      add_key_value('first_name', first_name)
    end

      # The method to get the email
      # @return A String value

    def email
      get_key_value('email')
    end

      # The method to set the value to email
      # @param email [String] A String

    def email=(email)
      if email!=nil and !email.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: email EXPECTED TYPE: String', nil, nil)
      end
      add_key_value('email', email)
    end

      # The method to get the reporting_to
      # @return An instance of User

    def reporting_to
      get_key_value('Reporting_To')
    end

      # The method to set the value to reporting_to
      # @param reporting_to [User] An instance of User

    def reporting_to=(reporting_to)
      if reporting_to!=nil and !reporting_to.is_a? User
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: reporting_to EXPECTED TYPE: User', nil, nil)
      end
      add_key_value('Reporting_To', reporting_to)
    end

      # The method to get the decimal_separator
      # @return A String value

    def decimal_separator
      get_key_value('decimal_separator')
    end

      # The method to set the value to decimal_separator
      # @param decimal_separator [String] A String

    def decimal_separator=(decimal_separator)
      if decimal_separator!=nil and !decimal_separator.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: decimal_separator EXPECTED TYPE: String', nil, nil)
      end
      add_key_value('decimal_separator', decimal_separator)
    end

      # The method to get the zip
      # @return A String value

    def zip
      get_key_value('zip')
    end

      # The method to set the value to zip
      # @param zip [String] A String

    def zip=(zip)
      if zip!=nil and !zip.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: zip EXPECTED TYPE: String', nil, nil)
      end
      add_key_value('zip', zip)
    end

      # The method to get the website
      # @return A String value

    def website
      get_key_value('website')
    end

      # The method to set the value to website
      # @param website [String] A String

    def website=(website)
      if website!=nil and !website.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: website EXPECTED TYPE: String', nil, nil)
      end
      add_key_value('website', website)
    end

      # The method to get the time_format
      # @return A String value

    def time_format
      get_key_value('time_format')
    end

      # The method to set the value to time_format
      # @param time_format [String] A String

    def time_format=(time_format)
      if time_format!=nil and !time_format.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: time_format EXPECTED TYPE: String', nil, nil)
      end
      add_key_value('time_format', time_format)
    end

      # The method to get the offset
      # @return A Integer value

    def offset
      get_key_value('offset')
    end

      # The method to set the value to offset
      # @param offset [Integer] A Integer

    def offset=(offset)
      if offset!=nil and !offset.is_a? Integer
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: offset EXPECTED TYPE: Integer', nil, nil)
      end
      add_key_value('offset', offset)
    end

      # The method to get the profile
      # @return An instance of Profiles::Profile

    def profile
      get_key_value('profile')
    end

      # The method to set the value to profile
      # @param profile [Profiles::Profile] An instance of Profiles::Profile

    def profile=(profile)
      if profile!=nil and !profile.is_a? Profiles::Profile
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: profile EXPECTED TYPE: Profile', nil, nil)
      end
      add_key_value('profile', profile)
    end

      # The method to get the mobile
      # @return A String value

    def mobile
      get_key_value('mobile')
    end

      # The method to set the value to mobile
      # @param mobile [String] A String

    def mobile=(mobile)
      if mobile!=nil and !mobile.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: mobile EXPECTED TYPE: String', nil, nil)
      end
      add_key_value('mobile', mobile)
    end

      # The method to get the last_name
      # @return A String value

    def last_name
      get_key_value('last_name')
    end

      # The method to set the value to last_name
      # @param last_name [String] A String

    def last_name=(last_name)
      if last_name!=nil and !last_name.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: last_name EXPECTED TYPE: String', nil, nil)
      end
      add_key_value('last_name', last_name)
    end

      # The method to get the time_zone
      # @return A String value

    def time_zone
      get_key_value('time_zone')
    end

      # The method to set the value to time_zone
      # @param time_zone [String] A String

    def time_zone=(time_zone)
      if time_zone!=nil and !time_zone.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: time_zone EXPECTED TYPE: String', nil, nil)
      end
      add_key_value('time_zone', time_zone)
    end

      # The method to get the zuid
      # @return A String value

    def zuid
      get_key_value('zuid')
    end

      # The method to set the value to zuid
      # @param zuid [String] A String

    def zuid=(zuid)
      if zuid!=nil and !zuid.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: zuid EXPECTED TYPE: String', nil, nil)
      end
      add_key_value('zuid', zuid)
    end

      # The method to get the confirm
      # @return A Boolean value

    def confirm
      get_key_value('confirm')
    end

      # The method to set the value to confirm
      # @param confirm [Boolean] A Boolean

    def confirm=(confirm)
      if confirm!=nil and ! [true, false].include?confirm
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: confirm EXPECTED TYPE: Boolean', nil, nil)
      end
      add_key_value('confirm', confirm)
    end

      # The method to get the full_name
      # @return A String value

    def full_name
      get_key_value('full_name')
    end

      # The method to set the value to full_name
      # @param full_name [String] A String

    def full_name=(full_name)
      if full_name!=nil and !full_name.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: full_name EXPECTED TYPE: String', nil, nil)
      end
      add_key_value('full_name', full_name)
    end

      # The method to get the territories
      # @return An instance of Array

    def territories
      get_key_value('territories')
    end

      # The method to set the value to territories
      # @param territories [Array] An instance of Array

    def territories=(territories)
      if territories!=nil and !territories.is_a? Array
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: territories EXPECTED TYPE: Array', nil, nil)
      end
      add_key_value('territories', territories)
    end

      # The method to get the phone
      # @return A String value

    def phone
      get_key_value('phone')
    end

      # The method to set the value to phone
      # @param phone [String] A String

    def phone=(phone)
      if phone!=nil and !phone.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: phone EXPECTED TYPE: String', nil, nil)
      end
      add_key_value('phone', phone)
    end

      # The method to get the dob
      # @return A String value

    def dob
      get_key_value('dob')
    end

      # The method to set the value to dob
      # @param dob [String] A String

    def dob=(dob)
      if dob!=nil and !dob.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: dob EXPECTED TYPE: String', nil, nil)
      end
      add_key_value('dob', dob)
    end

      # The method to get the date_format
      # @return A String value

    def date_format
      get_key_value('date_format')
    end

      # The method to set the value to date_format
      # @param date_format [String] A String

    def date_format=(date_format)
      if date_format!=nil and !date_format.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: date_format EXPECTED TYPE: String', nil, nil)
      end
      add_key_value('date_format', date_format)
    end

      # The method to get the status
      # @return A String value

    def status
      get_key_value('status')
    end

      # The method to set the value to status
      # @param status [String] A String

    def status=(status)
      if status!=nil and !status.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: status EXPECTED TYPE: String', nil, nil)
      end
      add_key_value('status', status)
    end

      # The method to get the name
      # @return A String value

    def name
      get_key_value('name')
    end

      # The method to set the value to name
      # @param name [String] A String

    def name=(name)
      if name!=nil and !name.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: name EXPECTED TYPE: String', nil, nil)
      end
      add_key_value('name', name)
    end

  end
end
