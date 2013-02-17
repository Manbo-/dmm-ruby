# vim: ts=2 sts=2 et sw=2 ft=ruby

require 'faraday'
require 'faraday_middleware'

module DMM
  API_URL     = 'http://affiliate-api.dmm.com'
  API_VERSION = '2.00'

  class Client
    attr_reader :api_id, :affiliate_id, :raw

    def initialize(api_id, affiliate_id, site = 'DMM.com')
      @api_id = api_id
      @affiliate_id = affiliate_id
      @site = site
    end

    def get(params, options = {})
      params[:keyword].encode!("euc-jp") if params[:keyword]
      default_params = {
        :api_id       => @api_id,
        :affiliate_id => @affiliate_id,
        :operation    => 'ItemList',
        :version      => API_VERSION,
        :timestamp    => Time.now,
        :site         => @site, # 'DMM.com' or 'DMM.co.jp'
      }.update(params)

      @raw = connection(options).get('/', default_params)
    end

    def response
      @raw.body["response"]
    end

    def items
      response["result"]["items"]["item"]
    end

    private

    def connection(options)
      Faraday.new(API_URL, options) do |faraday|
        faraday.adapter(Faraday.default_adapter)
        faraday.request(:url_encoded)
        faraday.response(:xml, :content_type => /\bxml$/)
      end
    end
  end
end
