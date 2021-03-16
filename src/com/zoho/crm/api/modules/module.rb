require_relative '../custom_views/custom_view'
require_relative '../profiles/profile'
require_relative '../users/user'
require_relative '../util/choice'
require_relative '../util/model'

module Modules
  class Module
    include Util::Model

    # Creates an instance of Module
    def initialize
      @name = nil
      @global_search_supported = nil
      @kanban_view = nil
      @deletable = nil
      @description = nil
      @creatable = nil
      @filter_status = nil
      @inventory_template_supported = nil
      @modified_time = nil
      @plural_label = nil
      @presence_sub_menu = nil
      @triggers_supported = nil
      @id = nil
      @related_list_properties = nil
      @properties = nil
      @per_page = nil
      @visibility = nil
      @convertable = nil
      @editable = nil
      @emailtemplate_support = nil
      @profiles = nil
      @filter_supported = nil
      @display_field = nil
      @search_layout_fields = nil
      @kanban_view_supported = nil
      @show_as_tab = nil
      @web_link = nil
      @sequence_number = nil
      @singular_label = nil
      @viewable = nil
      @api_supported = nil
      @api_name = nil
      @quick_create = nil
      @modified_by = nil
      @generated_type = nil
      @feeds_required = nil
      @scoring_supported = nil
      @webform_supported = nil
      @arguments = nil
      @module_name = nil
      @business_card_field_limit = nil
      @custom_view = nil
      @parent_module = nil
      @territory = nil
      @key_modified = Hash.new
    end

      # The method to get the name
      # @return A String value

    def name
      @name
    end

      # The method to set the value to name
      # @param name [String] A String

    def name=(name)
      if name!=nil and !name.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: name EXPECTED TYPE: String', nil, nil)
      end
      @name = name
      @key_modified['name'] = 1
    end

      # The method to get the global_search_supported
      # @return A Boolean value

    def global_search_supported
      @global_search_supported
    end

      # The method to set the value to global_search_supported
      # @param global_search_supported [Boolean] A Boolean

    def global_search_supported=(global_search_supported)
      if global_search_supported!=nil and ! [true, false].include?global_search_supported
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: global_search_supported EXPECTED TYPE: Boolean', nil, nil)
      end
      @global_search_supported = global_search_supported
      @key_modified['global_search_supported'] = 1
    end

      # The method to get the kanban_view
      # @return A Boolean value

    def kanban_view
      @kanban_view
    end

      # The method to set the value to kanban_view
      # @param kanban_view [Boolean] A Boolean

    def kanban_view=(kanban_view)
      if kanban_view!=nil and ! [true, false].include?kanban_view
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: kanban_view EXPECTED TYPE: Boolean', nil, nil)
      end
      @kanban_view = kanban_view
      @key_modified['kanban_view'] = 1
    end

      # The method to get the deletable
      # @return A Boolean value

    def deletable
      @deletable
    end

      # The method to set the value to deletable
      # @param deletable [Boolean] A Boolean

    def deletable=(deletable)
      if deletable!=nil and ! [true, false].include?deletable
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: deletable EXPECTED TYPE: Boolean', nil, nil)
      end
      @deletable = deletable
      @key_modified['deletable'] = 1
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

      # The method to get the creatable
      # @return A Boolean value

    def creatable
      @creatable
    end

      # The method to set the value to creatable
      # @param creatable [Boolean] A Boolean

    def creatable=(creatable)
      if creatable!=nil and ! [true, false].include?creatable
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: creatable EXPECTED TYPE: Boolean', nil, nil)
      end
      @creatable = creatable
      @key_modified['creatable'] = 1
    end

      # The method to get the filter_status
      # @return A Boolean value

    def filter_status
      @filter_status
    end

      # The method to set the value to filter_status
      # @param filter_status [Boolean] A Boolean

    def filter_status=(filter_status)
      if filter_status!=nil and ! [true, false].include?filter_status
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: filter_status EXPECTED TYPE: Boolean', nil, nil)
      end
      @filter_status = filter_status
      @key_modified['filter_status'] = 1
    end

      # The method to get the inventory_template_supported
      # @return A Boolean value

    def inventory_template_supported
      @inventory_template_supported
    end

      # The method to set the value to inventory_template_supported
      # @param inventory_template_supported [Boolean] A Boolean

    def inventory_template_supported=(inventory_template_supported)
      if inventory_template_supported!=nil and ! [true, false].include?inventory_template_supported
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: inventory_template_supported EXPECTED TYPE: Boolean', nil, nil)
      end
      @inventory_template_supported = inventory_template_supported
      @key_modified['inventory_template_supported'] = 1
    end

      # The method to get the modified_time
      # @return An instance of DateTime

    def modified_time
      @modified_time
    end

      # The method to set the value to modified_time
      # @param modified_time [DateTime] An instance of DateTime

    def modified_time=(modified_time)
      if modified_time!=nil and !modified_time.is_a? DateTime
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: modified_time EXPECTED TYPE: DateTime', nil, nil)
      end
      @modified_time = modified_time
      @key_modified['modified_time'] = 1
    end

      # The method to get the plural_label
      # @return A String value

    def plural_label
      @plural_label
    end

      # The method to set the value to plural_label
      # @param plural_label [String] A String

    def plural_label=(plural_label)
      if plural_label!=nil and !plural_label.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: plural_label EXPECTED TYPE: String', nil, nil)
      end
      @plural_label = plural_label
      @key_modified['plural_label'] = 1
    end

      # The method to get the presence_sub_menu
      # @return A Boolean value

    def presence_sub_menu
      @presence_sub_menu
    end

      # The method to set the value to presence_sub_menu
      # @param presence_sub_menu [Boolean] A Boolean

    def presence_sub_menu=(presence_sub_menu)
      if presence_sub_menu!=nil and ! [true, false].include?presence_sub_menu
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: presence_sub_menu EXPECTED TYPE: Boolean', nil, nil)
      end
      @presence_sub_menu = presence_sub_menu
      @key_modified['presence_sub_menu'] = 1
    end

      # The method to get the triggers_supported
      # @return A Boolean value

    def triggers_supported
      @triggers_supported
    end

      # The method to set the value to triggers_supported
      # @param triggers_supported [Boolean] A Boolean

    def triggers_supported=(triggers_supported)
      if triggers_supported!=nil and ! [true, false].include?triggers_supported
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: triggers_supported EXPECTED TYPE: Boolean', nil, nil)
      end
      @triggers_supported = triggers_supported
      @key_modified['triggers_supported'] = 1
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

      # The method to get the related_list_properties
      # @return An instance of RelatedListProperties

    def related_list_properties
      @related_list_properties
    end

      # The method to set the value to related_list_properties
      # @param related_list_properties [RelatedListProperties] An instance of RelatedListProperties

    def related_list_properties=(related_list_properties)
      if related_list_properties!=nil and !related_list_properties.is_a? RelatedListProperties
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: related_list_properties EXPECTED TYPE: RelatedListProperties', nil, nil)
      end
      @related_list_properties = related_list_properties
      @key_modified['related_list_properties'] = 1
    end

      # The method to get the properties
      # @return An instance of Array

    def properties
      @properties
    end

      # The method to set the value to properties
      # @param properties [Array] An instance of Array

    def properties=(properties)
      if properties!=nil and !properties.is_a? Array
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: properties EXPECTED TYPE: Array', nil, nil)
      end
      @properties = properties
      @key_modified['$properties'] = 1
    end

      # The method to get the per_page
      # @return A Integer value

    def per_page
      @per_page
    end

      # The method to set the value to per_page
      # @param per_page [Integer] A Integer

    def per_page=(per_page)
      if per_page!=nil and !per_page.is_a? Integer
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: per_page EXPECTED TYPE: Integer', nil, nil)
      end
      @per_page = per_page
      @key_modified['per_page'] = 1
    end

      # The method to get the visibility
      # @return A Integer value

    def visibility
      @visibility
    end

      # The method to set the value to visibility
      # @param visibility [Integer] A Integer

    def visibility=(visibility)
      if visibility!=nil and !visibility.is_a? Integer
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: visibility EXPECTED TYPE: Integer', nil, nil)
      end
      @visibility = visibility
      @key_modified['visibility'] = 1
    end

      # The method to get the convertable
      # @return A Boolean value

    def convertable
      @convertable
    end

      # The method to set the value to convertable
      # @param convertable [Boolean] A Boolean

    def convertable=(convertable)
      if convertable!=nil and ! [true, false].include?convertable
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: convertable EXPECTED TYPE: Boolean', nil, nil)
      end
      @convertable = convertable
      @key_modified['convertable'] = 1
    end

      # The method to get the editable
      # @return A Boolean value

    def editable
      @editable
    end

      # The method to set the value to editable
      # @param editable [Boolean] A Boolean

    def editable=(editable)
      if editable!=nil and ! [true, false].include?editable
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: editable EXPECTED TYPE: Boolean', nil, nil)
      end
      @editable = editable
      @key_modified['editable'] = 1
    end

      # The method to get the emailtemplate_support
      # @return A Boolean value

    def emailtemplate_support
      @emailtemplate_support
    end

      # The method to set the value to emailtemplate_support
      # @param emailtemplate_support [Boolean] A Boolean

    def emailtemplate_support=(emailtemplate_support)
      if emailtemplate_support!=nil and ! [true, false].include?emailtemplate_support
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: emailtemplate_support EXPECTED TYPE: Boolean', nil, nil)
      end
      @emailtemplate_support = emailtemplate_support
      @key_modified['emailTemplate_support'] = 1
    end

      # The method to get the profiles
      # @return An instance of Array

    def profiles
      @profiles
    end

      # The method to set the value to profiles
      # @param profiles [Array] An instance of Array

    def profiles=(profiles)
      if profiles!=nil and !profiles.is_a? Array
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: profiles EXPECTED TYPE: Array', nil, nil)
      end
      @profiles = profiles
      @key_modified['profiles'] = 1
    end

      # The method to get the filter_supported
      # @return A Boolean value

    def filter_supported
      @filter_supported
    end

      # The method to set the value to filter_supported
      # @param filter_supported [Boolean] A Boolean

    def filter_supported=(filter_supported)
      if filter_supported!=nil and ! [true, false].include?filter_supported
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: filter_supported EXPECTED TYPE: Boolean', nil, nil)
      end
      @filter_supported = filter_supported
      @key_modified['filter_supported'] = 1
    end

      # The method to get the display_field
      # @return A String value

    def display_field
      @display_field
    end

      # The method to set the value to display_field
      # @param display_field [String] A String

    def display_field=(display_field)
      if display_field!=nil and !display_field.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: display_field EXPECTED TYPE: String', nil, nil)
      end
      @display_field = display_field
      @key_modified['display_field'] = 1
    end

      # The method to get the search_layout_fields
      # @return An instance of Array

    def search_layout_fields
      @search_layout_fields
    end

      # The method to set the value to search_layout_fields
      # @param search_layout_fields [Array] An instance of Array

    def search_layout_fields=(search_layout_fields)
      if search_layout_fields!=nil and !search_layout_fields.is_a? Array
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: search_layout_fields EXPECTED TYPE: Array', nil, nil)
      end
      @search_layout_fields = search_layout_fields
      @key_modified['search_layout_fields'] = 1
    end

      # The method to get the kanban_view_supported
      # @return A Boolean value

    def kanban_view_supported
      @kanban_view_supported
    end

      # The method to set the value to kanban_view_supported
      # @param kanban_view_supported [Boolean] A Boolean

    def kanban_view_supported=(kanban_view_supported)
      if kanban_view_supported!=nil and ! [true, false].include?kanban_view_supported
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: kanban_view_supported EXPECTED TYPE: Boolean', nil, nil)
      end
      @kanban_view_supported = kanban_view_supported
      @key_modified['kanban_view_supported'] = 1
    end

      # The method to get the show_as_tab
      # @return A Boolean value

    def show_as_tab
      @show_as_tab
    end

      # The method to set the value to show_as_tab
      # @param show_as_tab [Boolean] A Boolean

    def show_as_tab=(show_as_tab)
      if show_as_tab!=nil and ! [true, false].include?show_as_tab
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: show_as_tab EXPECTED TYPE: Boolean', nil, nil)
      end
      @show_as_tab = show_as_tab
      @key_modified['show_as_tab'] = 1
    end

      # The method to get the web_link
      # @return A String value

    def web_link
      @web_link
    end

      # The method to set the value to web_link
      # @param web_link [String] A String

    def web_link=(web_link)
      if web_link!=nil and !web_link.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: web_link EXPECTED TYPE: String', nil, nil)
      end
      @web_link = web_link
      @key_modified['web_link'] = 1
    end

      # The method to get the sequence_number
      # @return A Integer value

    def sequence_number
      @sequence_number
    end

      # The method to set the value to sequence_number
      # @param sequence_number [Integer] A Integer

    def sequence_number=(sequence_number)
      if sequence_number!=nil and !sequence_number.is_a? Integer
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: sequence_number EXPECTED TYPE: Integer', nil, nil)
      end
      @sequence_number = sequence_number
      @key_modified['sequence_number'] = 1
    end

      # The method to get the singular_label
      # @return A String value

    def singular_label
      @singular_label
    end

      # The method to set the value to singular_label
      # @param singular_label [String] A String

    def singular_label=(singular_label)
      if singular_label!=nil and !singular_label.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: singular_label EXPECTED TYPE: String', nil, nil)
      end
      @singular_label = singular_label
      @key_modified['singular_label'] = 1
    end

      # The method to get the viewable
      # @return A Boolean value

    def viewable
      @viewable
    end

      # The method to set the value to viewable
      # @param viewable [Boolean] A Boolean

    def viewable=(viewable)
      if viewable!=nil and ! [true, false].include?viewable
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: viewable EXPECTED TYPE: Boolean', nil, nil)
      end
      @viewable = viewable
      @key_modified['viewable'] = 1
    end

      # The method to get the api_supported
      # @return A Boolean value

    def api_supported
      @api_supported
    end

      # The method to set the value to api_supported
      # @param api_supported [Boolean] A Boolean

    def api_supported=(api_supported)
      if api_supported!=nil and ! [true, false].include?api_supported
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: api_supported EXPECTED TYPE: Boolean', nil, nil)
      end
      @api_supported = api_supported
      @key_modified['api_supported'] = 1
    end

      # The method to get the api_name
      # @return A String value

    def api_name
      @api_name
    end

      # The method to set the value to api_name
      # @param api_name [String] A String

    def api_name=(api_name)
      if api_name!=nil and !api_name.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: api_name EXPECTED TYPE: String', nil, nil)
      end
      @api_name = api_name
      @key_modified['api_name'] = 1
    end

      # The method to get the quick_create
      # @return A Boolean value

    def quick_create
      @quick_create
    end

      # The method to set the value to quick_create
      # @param quick_create [Boolean] A Boolean

    def quick_create=(quick_create)
      if quick_create!=nil and ! [true, false].include?quick_create
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: quick_create EXPECTED TYPE: Boolean', nil, nil)
      end
      @quick_create = quick_create
      @key_modified['quick_create'] = 1
    end

      # The method to get the modified_by
      # @return An instance of Users::User

    def modified_by
      @modified_by
    end

      # The method to set the value to modified_by
      # @param modified_by [Users::User] An instance of Users::User

    def modified_by=(modified_by)
      if modified_by!=nil and !modified_by.is_a? Users::User
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: modified_by EXPECTED TYPE: User', nil, nil)
      end
      @modified_by = modified_by
      @key_modified['modified_by'] = 1
    end

      # The method to get the generated_type
      # @return An instance of Util::Choice

    def generated_type
      @generated_type
    end

      # The method to set the value to generated_type
      # @param generated_type [Util::Choice] An instance of Util::Choice

    def generated_type=(generated_type)
      if generated_type!=nil and !generated_type.is_a? Util::Choice
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: generated_type EXPECTED TYPE: Util::Choice', nil, nil)
      end
      @generated_type = generated_type
      @key_modified['generated_type'] = 1
    end

      # The method to get the feeds_required
      # @return A Boolean value

    def feeds_required
      @feeds_required
    end

      # The method to set the value to feeds_required
      # @param feeds_required [Boolean] A Boolean

    def feeds_required=(feeds_required)
      if feeds_required!=nil and ! [true, false].include?feeds_required
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: feeds_required EXPECTED TYPE: Boolean', nil, nil)
      end
      @feeds_required = feeds_required
      @key_modified['feeds_required'] = 1
    end

      # The method to get the scoring_supported
      # @return A Boolean value

    def scoring_supported
      @scoring_supported
    end

      # The method to set the value to scoring_supported
      # @param scoring_supported [Boolean] A Boolean

    def scoring_supported=(scoring_supported)
      if scoring_supported!=nil and ! [true, false].include?scoring_supported
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: scoring_supported EXPECTED TYPE: Boolean', nil, nil)
      end
      @scoring_supported = scoring_supported
      @key_modified['scoring_supported'] = 1
    end

      # The method to get the webform_supported
      # @return A Boolean value

    def webform_supported
      @webform_supported
    end

      # The method to set the value to webform_supported
      # @param webform_supported [Boolean] A Boolean

    def webform_supported=(webform_supported)
      if webform_supported!=nil and ! [true, false].include?webform_supported
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: webform_supported EXPECTED TYPE: Boolean', nil, nil)
      end
      @webform_supported = webform_supported
      @key_modified['webform_supported'] = 1
    end

      # The method to get the arguments
      # @return An instance of Array

    def arguments
      @arguments
    end

      # The method to set the value to arguments
      # @param arguments [Array] An instance of Array

    def arguments=(arguments)
      if arguments!=nil and !arguments.is_a? Array
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: arguments EXPECTED TYPE: Array', nil, nil)
      end
      @arguments = arguments
      @key_modified['arguments'] = 1
    end

      # The method to get the module_name
      # @return A String value

    def module_name
      @module_name
    end

      # The method to set the value to module_name
      # @param module_name [String] A String

    def module_name=(module_name)
      if module_name!=nil and !module_name.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: module_name EXPECTED TYPE: String', nil, nil)
      end
      @module_name = module_name
      @key_modified['module_name'] = 1
    end

      # The method to get the business_card_field_limit
      # @return A Integer value

    def business_card_field_limit
      @business_card_field_limit
    end

      # The method to set the value to business_card_field_limit
      # @param business_card_field_limit [Integer] A Integer

    def business_card_field_limit=(business_card_field_limit)
      if business_card_field_limit!=nil and !business_card_field_limit.is_a? Integer
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: business_card_field_limit EXPECTED TYPE: Integer', nil, nil)
      end
      @business_card_field_limit = business_card_field_limit
      @key_modified['business_card_field_limit'] = 1
    end

      # The method to get the custom_view
      # @return An instance of CustomViews::CustomView

    def custom_view
      @custom_view
    end

      # The method to set the value to custom_view
      # @param custom_view [CustomViews::CustomView] An instance of CustomViews::CustomView

    def custom_view=(custom_view)
      if custom_view!=nil and !custom_view.is_a? CustomViews::CustomView
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: custom_view EXPECTED TYPE: CustomView', nil, nil)
      end
      @custom_view = custom_view
      @key_modified['custom_view'] = 1
    end

      # The method to get the parent_module
      # @return An instance of Module

    def parent_module
      @parent_module
    end

      # The method to set the value to parent_module
      # @param parent_module [Module] An instance of Module

    def parent_module=(parent_module)
      if parent_module!=nil and !parent_module.is_a? Module
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: parent_module EXPECTED TYPE: Module', nil, nil)
      end
      @parent_module = parent_module
      @key_modified['parent_module'] = 1
    end

      # The method to get the territory
      # @return An instance of Territory

    def territory
      @territory
    end

      # The method to set the value to territory
      # @param territory [Territory] An instance of Territory

    def territory=(territory)
      if territory!=nil and !territory.is_a? Territory
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: territory EXPECTED TYPE: Territory', nil, nil)
      end
      @territory = territory
      @key_modified['territory'] = 1
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
