require_relative '../record/record'
require_relative '../util/model'

module Record
  class InventoryLineItems < Record
    include Util::Model

    # Creates an instance of InventoryLineItems
    def initialize
      super
    end

      # The method to get the product
      # @return An instance of LineItemProduct

    def product
      get_key_value('product')
    end

      # The method to set the value to product
      # @param product [LineItemProduct] An instance of LineItemProduct

    def product=(product)
      if product!=nil and !product.is_a? LineItemProduct
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: product EXPECTED TYPE: LineItemProduct', nil, nil)
      end
      add_key_value('product', product)
    end

      # The method to get the quantity
      # @return An instance of Float

    def quantity
      get_key_value('quantity')
    end

      # The method to set the value to quantity
      # @param quantity [Float] An instance of Float

    def quantity=(quantity)
      if quantity!=nil and !quantity.is_a? Float
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: quantity EXPECTED TYPE: Float', nil, nil)
      end
      add_key_value('quantity', quantity)
    end

      # The method to get the discount
      # @return A String value

    def discount
      get_key_value('Discount')
    end

      # The method to set the value to discount
      # @param discount [String] A String

    def discount=(discount)
      if discount!=nil and !discount.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: discount EXPECTED TYPE: String', nil, nil)
      end
      add_key_value('Discount', discount)
    end

      # The method to get the total_after_discount
      # @return An instance of Float

    def total_after_discount
      get_key_value('total_after_discount')
    end

      # The method to set the value to total_after_discount
      # @param total_after_discount [Float] An instance of Float

    def total_after_discount=(total_after_discount)
      if total_after_discount!=nil and !total_after_discount.is_a? Float
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: total_after_discount EXPECTED TYPE: Float', nil, nil)
      end
      add_key_value('total_after_discount', total_after_discount)
    end

      # The method to get the net_total
      # @return An instance of Float

    def net_total
      get_key_value('net_total')
    end

      # The method to set the value to net_total
      # @param net_total [Float] An instance of Float

    def net_total=(net_total)
      if net_total!=nil and !net_total.is_a? Float
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: net_total EXPECTED TYPE: Float', nil, nil)
      end
      add_key_value('net_total', net_total)
    end

      # The method to get the book
      # @return An instance of Float

    def book
      get_key_value('book')
    end

      # The method to set the value to book
      # @param book [Float] An instance of Float

    def book=(book)
      if book!=nil and !book.is_a? Float
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: book EXPECTED TYPE: Float', nil, nil)
      end
      add_key_value('book', book)
    end

      # The method to get the tax
      # @return An instance of Float

    def tax
      get_key_value('Tax')
    end

      # The method to set the value to tax
      # @param tax [Float] An instance of Float

    def tax=(tax)
      if tax!=nil and !tax.is_a? Float
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: tax EXPECTED TYPE: Float', nil, nil)
      end
      add_key_value('Tax', tax)
    end

      # The method to get the list_price
      # @return An instance of Float

    def list_price
      get_key_value('list_price')
    end

      # The method to set the value to list_price
      # @param list_price [Float] An instance of Float

    def list_price=(list_price)
      if list_price!=nil and !list_price.is_a? Float
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: list_price EXPECTED TYPE: Float', nil, nil)
      end
      add_key_value('list_price', list_price)
    end

      # The method to get the unit_price
      # @return An instance of Float

    def unit_price
      get_key_value('unit_price')
    end

      # The method to set the value to unit_price
      # @param unit_price [Float] An instance of Float

    def unit_price=(unit_price)
      if unit_price!=nil and !unit_price.is_a? Float
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: unit_price EXPECTED TYPE: Float', nil, nil)
      end
      add_key_value('unit_price', unit_price)
    end

      # The method to get the quantity_in_stock
      # @return An instance of Float

    def quantity_in_stock
      get_key_value('quantity_in_stock')
    end

      # The method to set the value to quantity_in_stock
      # @param quantity_in_stock [Float] An instance of Float

    def quantity_in_stock=(quantity_in_stock)
      if quantity_in_stock!=nil and !quantity_in_stock.is_a? Float
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: quantity_in_stock EXPECTED TYPE: Float', nil, nil)
      end
      add_key_value('quantity_in_stock', quantity_in_stock)
    end

      # The method to get the total
      # @return An instance of Float

    def total
      get_key_value('total')
    end

      # The method to set the value to total
      # @param total [Float] An instance of Float

    def total=(total)
      if total!=nil and !total.is_a? Float
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: total EXPECTED TYPE: Float', nil, nil)
      end
      add_key_value('total', total)
    end

      # The method to get the product_description
      # @return A String value

    def product_description
      get_key_value('product_description')
    end

      # The method to set the value to product_description
      # @param product_description [String] A String

    def product_description=(product_description)
      if product_description!=nil and !product_description.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: product_description EXPECTED TYPE: String', nil, nil)
      end
      add_key_value('product_description', product_description)
    end

      # The method to get the line_tax
      # @return An instance of Array

    def line_tax
      get_key_value('line_tax')
    end

      # The method to set the value to line_tax
      # @param line_tax [Array] An instance of Array

    def line_tax=(line_tax)
      if line_tax!=nil and !line_tax.is_a? Array
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: line_tax EXPECTED TYPE: Array', nil, nil)
      end
      add_key_value('line_tax', line_tax)
    end

  end
end
