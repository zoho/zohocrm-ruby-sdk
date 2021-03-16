require_relative '../fields/tool_tip'
require_relative '../util/model'

module Layouts
  class Properties
    include Util::Model

    # Creates an instance of Properties
    def initialize
      @reorder_rows = nil
      @tooltip = nil
      @maximum_rows = nil
      @key_modified = Hash.new
    end

      # The method to get the reorder_rows
      # @return A Boolean value

    def reorder_rows
      @reorder_rows
    end

      # The method to set the value to reorder_rows
      # @param reorder_rows [Boolean] A Boolean

    def reorder_rows=(reorder_rows)
      if reorder_rows!=nil and ! [true, false].include?reorder_rows
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: reorder_rows EXPECTED TYPE: Boolean', nil, nil)
      end
      @reorder_rows = reorder_rows
      @key_modified['reorder_rows'] = 1
    end

      # The method to get the tooltip
      # @return An instance of Fields::ToolTip

    def tooltip
      @tooltip
    end

      # The method to set the value to tooltip
      # @param tooltip [Fields::ToolTip] An instance of Fields::ToolTip

    def tooltip=(tooltip)
      if tooltip!=nil and !tooltip.is_a? Fields::ToolTip
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: tooltip EXPECTED TYPE: ToolTip', nil, nil)
      end
      @tooltip = tooltip
      @key_modified['tooltip'] = 1
    end

      # The method to get the maximum_rows
      # @return A Integer value

    def maximum_rows
      @maximum_rows
    end

      # The method to set the value to maximum_rows
      # @param maximum_rows [Integer] A Integer

    def maximum_rows=(maximum_rows)
      if maximum_rows!=nil and !maximum_rows.is_a? Integer
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: maximum_rows EXPECTED TYPE: Integer', nil, nil)
      end
      @maximum_rows = maximum_rows
      @key_modified['maximum_rows'] = 1
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
