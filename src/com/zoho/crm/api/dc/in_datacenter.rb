require_relative 'datacenter'
module DC
  class INDataCenter < DataCenter
    def initialize; end

    def get_iam_url
      'https://accounts.zoho.in/oauth/v2/token'
    end

    def get_file_upload_url
      'https://content.zohoapis.in'
    end

    PRODUCTION = Environment.new('https://www.zohoapis.in', INDataCenter.new.get_iam_url, INDataCenter.new.get_file_upload_url)
    SANDBOX = Environment.new('https://sandbox.zohoapis.in', INDataCenter.new.get_iam_url, INDataCenter.new.get_file_upload_url)
    DEVELOPER = Environment.new('https://developer.zohoapis.in', INDataCenter.new.get_iam_url, INDataCenter.new.get_file_upload_url)
  end
end
