require_relative 'datacenter'
module DC
  class EUDataCenter < DataCenter
    def initialize; end

    def get_iam_url
      'https://accounts.zoho.eu/oauth/v2/token'
    end

    def get_file_upload_url
      'https://content.zohoapis.eu'
    end

    PRODUCTION = Environment.new('https://www.zohoapis.eu', EUDataCenter.new.get_iam_url, EUDataCenter.new.get_file_upload_url)
    SANDBOX = Environment.new('https://sandbox.zohoapis.eu', EUDataCenter.new.get_iam_url, EUDataCenter.new.get_file_upload_url)
    DEVELOPER = Environment.new('https://developer.zohoapis.eu', EUDataCenter.new.get_iam_url, EUDataCenter.new.get_file_upload_url)
  end
end
