require_relative '../record/record'
require_relative '../util/model'

module Record
  class LineItemProduct < Record
    include Util::Model

    # Creates an instance of LineItemProduct
    def initialize
      super
    end

      # The method to get the product_code
      # @return A String value

    def product_code
      get_key_value('Product_Code')
    end

      # The method to set the value to product_code
      # @param product_code [String] A String

    def product_code=(product_code)
      if product_code!=nil and !product_code.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: product_code EXPECTED TYPE: String', nil, nil)
      end
      add_key_value('Product_Code', product_code)
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
