# vim: ts=2 sts=2 et sw=2 ft=ruby

require 'faraday'
require 'faraday_middleware'
require 'dmm-ruby/parameters'

module DMM
  API_URL     = 'http://affiliate-api.dmm.com'
  API_VERSION = '2.00'

  class Client
    attr_reader :api_id, :affiliate_id

    def initialize(api_id, affiliate_id)
      @api_id = api_id
      @affiliate_id = affiliate_id
    end

    def connection(options)
      Faraday.new(API_URL, options) do |faraday|
        faraday.adapter(Faraday.default_adapter)
        faraday.request(:url_encoded)
        faraday.response(:xml, :content_type => /\bxml$/)
      end
    end

    def get(params, options = {})
      default_params = {
        :api_id       => @api_id,
        :affiliate_id => @affiliate_id,
        :operation    => OPERATION_ITEM_LIST,
        :version      => API_VERSION,
        :timestamp    => Time.now,
        :site         => SITE_DMM_COM,
      }.update(params)

      connection(options).get('/', default_params)
    end
  end
end
