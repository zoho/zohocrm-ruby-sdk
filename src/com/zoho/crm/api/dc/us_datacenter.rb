require_relative 'datacenter'
module DC
  class USDataCenter < DataCenter
    def initialize; end

    def get_iam_url
      'https://accounts.zoho.com/oauth/v2/token'
    end

    def get_file_upload_url
      'https://content.zohoapis.com'
    end

    PRODUCTION = Environment.new('https://www.zohoapis.com', USDataCenter.new.get_iam_url, USDataCenter.new.get_file_upload_url)
    SANDBOX = Environment.new('https://sandbox.zohoapis.com', USDataCenter.new.get_iam_url, USDataCenter.new.get_file_upload_url)
    DEVELOPER = Environment.new('https://developer.zohoapis.com', USDataCenter.new.get_iam_url, USDataCenter.new.get_file_upload_url)
  end
end
