require_relative '../record/record'
require_relative '../util/model'

module Record
  class PricingDetails < Record
    include Util::Model

    # Creates an instance of PricingDetails
    def initialize
      super
    end

      # The method to get the to_range
      # @return An instance of Float

    def to_range
      get_key_value('to_range')
    end

      # The method to set the value to to_range
      # @param to_range [Float] An instance of Float

    def to_range=(to_range)
      if to_range!=nil and !to_range.is_a? Float
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: to_range EXPECTED TYPE: Float', nil, nil)
      end
      add_key_value('to_range', to_range)
    end

      # The method to get the discount
      # @return An instance of Float

    def discount
      get_key_value('discount')
    end

      # The method to set the value to discount
      # @param discount [Float] An instance of Float

    def discount=(discount)
      if discount!=nil and !discount.is_a? Float
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: discount EXPECTED TYPE: Float', nil, nil)
      end
      add_key_value('discount', discount)
    end

      # The method to get the from_range
      # @return An instance of Float

    def from_range
      get_key_value('from_range')
    end

      # The method to set the value to from_range
      # @param from_range [Float] An instance of Float

    def from_range=(from_range)
      if from_range!=nil and !from_range.is_a? Float
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: from_range EXPECTED TYPE: Float', nil, nil)
      end
      add_key_value('from_range', from_range)
    end

  end
end
