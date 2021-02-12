require_relative '../util/model'

module Users
  class Theme
    include Util::Model

    # Creates an instance of Theme
    def initialize
      @normal_tab = nil
      @selected_tab = nil
      @new_background = nil
      @background = nil
      @screen = nil
      @type = nil
      @key_modified = Hash.new
    end

      # The method to get the normal_tab
      # @return An instance of TabTheme

    def normal_tab
      @normal_tab
    end

      # The method to set the value to normal_tab
      # @param normal_tab [TabTheme] An instance of TabTheme

    def normal_tab=(normal_tab)
      if normal_tab!=nil and !normal_tab.is_a? TabTheme
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: normal_tab EXPECTED TYPE: TabTheme', nil, nil)
      end
      @normal_tab = normal_tab
      @key_modified['normal_tab'] = 1
    end

      # The method to get the selected_tab
      # @return An instance of TabTheme

    def selected_tab
      @selected_tab
    end

      # The method to set the value to selected_tab
      # @param selected_tab [TabTheme] An instance of TabTheme

    def selected_tab=(selected_tab)
      if selected_tab!=nil and !selected_tab.is_a? TabTheme
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: selected_tab EXPECTED TYPE: TabTheme', nil, nil)
      end
      @selected_tab = selected_tab
      @key_modified['selected_tab'] = 1
    end

      # The method to get the new_background
      # @return A String value

    def new_background
      @new_background
    end

      # The method to set the value to new_background
      # @param new_background [String] A String

    def new_background=(new_background)
      if new_background!=nil and !new_background.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: new_background EXPECTED TYPE: String', nil, nil)
      end
      @new_background = new_background
      @key_modified['new_background'] = 1
    end

      # The method to get the background
      # @return A String value

    def background
      @background
    end

      # The method to set the value to background
      # @param background [String] A String

    def background=(background)
      if background!=nil and !background.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: background EXPECTED TYPE: String', nil, nil)
      end
      @background = background
      @key_modified['background'] = 1
    end

      # The method to get the screen
      # @return A String value

    def screen
      @screen
    end

      # The method to set the value to screen
      # @param screen [String] A String

    def screen=(screen)
      if screen!=nil and !screen.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: screen EXPECTED TYPE: String', nil, nil)
      end
      @screen = screen
      @key_modified['screen'] = 1
    end

      # The method to get the type
      # @return A String value

    def type
      @type
    end

      # The method to set the value to type
      # @param type [String] A String

    def type=(type)
      if type!=nil and !type.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: type EXPECTED TYPE: String', nil, nil)
      end
      @type = type
      @key_modified['type'] = 1
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
