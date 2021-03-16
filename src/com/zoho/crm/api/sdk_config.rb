class SDKConfig
  class Builder
    def initialize
      @auto_refresh_fields = false
      @pick_list_validation = true
      @open_timeout = 60
      @read_timeout = 60
      @write_timeout = 60
      @keep_alive_timeout = 2
    end

    def auto_refresh_fields(auto_refresh_fields)
      @auto_refresh_fields = auto_refresh_fields
      self
    end

    def pick_list_validation(pick_list_validation)
      @pick_list_validation = pick_list_validation
      self
    end

    def open_timeout(open_timeout)
      @open_timeout = open_timeout
      self
    end

    def read_timeout(read_timeout)
      @read_timeout = read_timeout
      self
    end

    def write_timeout(write_timeout)
      @write_timeout = write_timeout
      self
    end

    def keep_alive_timeout(keep_alive_timeout)
      @keep_alive_timeout = keep_alive_timeout
      self
    end

    def build
      SDKConfig.new(@auto_refresh_fields, @pick_list_validation,@open_timeout,@read_timeout,@write_timeout,@keep_alive_timeout)
    end
  end
  def initialize(auto_refresh_fields, pick_list_validation,open_timeout,read_timeout,write_timeout,keep_alive_timeout)
    @auto_refresh_fields = auto_refresh_fields
    @pick_list_validation = pick_list_validation
    @open_timeout = open_timeout
    @read_timeout = read_timeout
    @write_timeout = write_timeout
    @keep_alive_timeout = keep_alive_timeout
  end

  def auto_refresh_fields
    @auto_refresh_fields
  end

  def pick_list_validation
    @pick_list_validation
  end

  def open_timeout
    @open_timeout   
  end

  def read_timeout
    @read_timeout 
  end

  def write_timeout
    @write_timeout
  end

  def keep_alive_timeout
    @keep_alive_timeout 
  end
end
