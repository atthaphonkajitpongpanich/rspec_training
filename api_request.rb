require 'uri'
require 'net/http'

class API_Request
    def get_ip_request
        uri = URI('https://ipapi.co/json/')
        res = Net::HTTP.get_response(uri)
        res
    end
end