require_relative 'datacenter'
module DC
  class AUDataCenter < DataCenter
    def initialize; end

    def get_iam_url
      'https://accounts.zoho.com.au/oauth/v2/token'
    end

    def get_file_upload_url
      'https://content.zohoapis.com.au'
    end

    PRODUCTION = Environment.new('https://www.zohoapis.com.au', AUDataCenter.new.get_iam_url, AUDataCenter.new.get_file_upload_url)
    SANDBOX = Environment.new('https://sandbox.zohoapis.com.au', AUDataCenter.new.get_iam_url, AUDataCenter.new.get_file_upload_url)
    DEVELOPER = Environment.new('https://developer.zohoapis.com.au', AUDataCenter.new.get_iam_url, AUDataCenter.new.get_file_upload_url)
  end
end
