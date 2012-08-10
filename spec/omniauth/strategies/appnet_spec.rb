require 'spec_helper'

describe OmniAuth::Strategies::Appnet do

  subject do
    OmniAuth::Strategies::Appnet.new({})
  end

  context "general" do
    it "should be called appnet" do
      subject.options.name.should eq('appnet')
    end
  end

  context "endpoints" do
    it "has correct site" do
      subject.options.client_options.site.should eq("https://alpha-api.app.net")
    end

    it "has correct authorize_url" do
      subject.options.client_options.authorize_url.should eq("https://alpha.app.net/oauth/authenticate")
    end

    it "has correct token_url" do
      subject.options.client_options.token_url.should eq("https://alpha.app.net/oauth/access_token")
    end
  end

end