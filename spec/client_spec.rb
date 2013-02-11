require "spec_helper"

describe DMM::Client do
  re = Regexp.compile(Regexp.escape(DMM::API_URL))

  before :all do
    @client = DMM::Client.new('dummy_api_key', 'dummy_affiliate_id')
  end

  describe "#get" do
    before :each do
      stub_request(:any, re).to_return(fixture('dmm_com.xml'))
      @response = @client.get({:keyword => 'SearchKeyword'})
    end

    describe 'response' do
      subject { @response.body['response'] }
      it { should have_key('request') }
      it { should have_key('result') }
    end

    describe 'response' do
      subject { @response.body.response }
      it { should have_key('result') }
    end
  end

  describe '#search' do
    before :each do
      stub_request(:any, re).to_return(fixture('dmm_com.xml'))
      @response = @client.search('SearchKeyword')
    end

    specify { @response.body.response?.should be_true }

    describe 'response' do
      subject { @response.body.response }
      it { should have_key('request') }
      it { should have_key('result') }
    end
  end

  describe 'methods for update parameters' do
    (DMM::Client::REQUIRED_KEYS + DMM::Client::OPTIONAL_KEYS).each do |key|
      describe "##{key}" do
        subject { @client.send(key, (@val = rand(100))) }

        it 'creates new instance' do
          subject.object_id.should_not == @client.object_id
        end
        it 'has updated parameters' do
          subject.params[key].should == @val
        end
        it 'doesn\'t update parameters of original client' do
          if @client.params[key]
            @client.params[key].should_not == @val
          end
        end
      end
    end
  end

  describe '#order' do
    pending
  end
end
