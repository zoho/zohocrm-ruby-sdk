require_relative 'datacenter'
module DC
  class CNDataCenter < DataCenter
    def initialize; end

    def get_iam_url
      'https://accounts.zoho.com.cn/oauth/v2/token'
    end

    def get_file_upload_url
      'https://content.zohoapis.com.cn'
    end

    PRODUCTION = Environment.new('https://www.zohoapis.com.cn', CNDataCenter.new.get_iam_url, CNDataCenter.new.get_file_upload_url)
    SANDBOX = Environment.new('https://sandbox.zohoapis.com.cn', CNDataCenter.new.get_iam_url, CNDataCenter.new.get_file_upload_url)
    DEVELOPER = Environment.new('https://developer.zohoapis.com.cn', CNDataCenter.new.get_iam_url, CNDataCenter.new.get_file_upload_url)
  end
end
