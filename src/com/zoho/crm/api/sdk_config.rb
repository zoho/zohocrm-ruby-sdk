class SDKConfig
  class Builder
    def initialize
      @auto_refresh_fields = false
      @pick_list_validation = true
    end

    def auto_refresh_fields(auto_refresh_fields)
      @auto_refresh_fields = auto_refresh_fields
      self
    end

    def pick_list_validation(pick_list_validation)
      @pick_list_validation = pick_list_validation
      self
    end

    def build
      SDKConfig.new(@auto_refresh_fields, @pick_list_validation)
    end
  end
  def initialize(auto_refresh_fields, pick_list_validation)
    @auto_refresh_fields = auto_refresh_fields
    @pick_list_validation = pick_list_validation
  end

  def auto_refresh_fields
    @auto_refresh_fields
  end

  def pick_list_validation
    @pick_list_validation
  end
end
