# vim: ts=2 sts=2 et sw=2 ft=ruby

require 'faraday'
require 'faraday_middleware'
require 'dmm-ruby/parameters'

module DMM
  API_URL             = 'http://affiliate-api.dmm.com'.freeze
  DEFAULT_API_VERSION = '2.00'.freeze

  class Client
    attr_accessor :params, :options

    def initialize(api_id, affiliate_id)
      @params = {
        :api_id       => api_id,
        :affiliate_id => affiliate_id,
        :operation    => OPERATION_ITEM_LIST,
        :version      => DEFAULT_API_VERSION,
        :timestamp    => Time.now.strftime("%F %T"),
        :site         => DEFAULT_SITE,
      }
      @options = {}
    end

    def connection(options)
      # TODO: not to create on every request.
      Faraday.new(API_URL, options) do |faraday|
        faraday.adapter(Faraday.default_adapter)
        faraday.request(:url_encoded)
        faraday.response(:xml, :content_type => "text/xml; charset=euc-jp")
        faraday.use(FaradayMiddleware::Mashify)
        faraday.use(FaradayMiddleware::ParseXml)
      end
    end

    def get(params = {}, options = {})
      @params.update(params)
      @options.update(options)
      connection(@options).get('/', @params)
    end

    def search(keyword)
      keyword(keyword)
      get
    end

    REQUIRED_KEYS = [:api_id, :affiliate_id, :operation, :version, :timestamp, :site].freeze
    OPTIONAL_KEYS = [:service, :floor, :hits, :offset, :sort, :keyword, :mono_stock].freeze

    def validate
      @params.keys & REQUIRED_KEYS == REQUIRED_KEYS
    end

    # define methods for update parameters
    (REQUIRED_KEYS + OPTIONAL_KEYS).each do |key|
      next if method_defined?(key)
      define_method(key) do |value|
        dup = self.dup
        dup.params.update(key => value)
        dup
      end
    end
    alias :limit :hits
    alias :stock :mono_stock

    # client helper method
    def order(order_by, direction = nil)
      order = case order_by
      when :rank
        'rank'
      when :price
        if direction =~ /desc/ then '+price' else '-price' end
      when :date
        'date'
      when :review
        'review'
      else
        DEFAULT_SORT
      end

      dup = self.dup
      dup.params.update(:sort => order)
      dup
    end

    private
    def initialize_copy(source)
      super
      @params = @params.dup
      @oprions = @options.dup
    end
  end
end
