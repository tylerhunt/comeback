require File.dirname(__FILE__) + '/spec_helper'

describe "Comeback" do
  before(:each) do
    @comeback_controller = Class.new(ActionController::Base).class_eval do
      include ActionController::TestProcess
    end

    @request = mock("request")
    @request.stub!(:env).and_return({ "HTTP_REFERER" => "/referer" })
    @request.stub!(:url).and_return("/private")

    @controller = @comeback_controller.new
    @controller.stub!(:request).and_return(@request)
    @controller.stub!(:session).and_return({})
  end

  describe "session key" do
    it "should default to :comeback_to" do
      @comeback_controller.comeback_session_key.should == :comeback_to
    end

    it "should be allowed to be overridden" do
      @comeback_controller.comeback_session_key = :return_to
      @comeback_controller.comeback_session_key.should == :return_to
    end
  end

  describe "#store_location" do
    it "should store the current location" do
      @controller.store_location
      @controller.session[:comeback_to].should == "/private"
    end

    it "should store the specified location" do
      @controller.store_location("/other")
      @controller.session[:comeback_to].should == "/other"
    end
  end

  describe "#store_referer" do
    it "should store the referer" do
      @controller.store_referer
      @controller.session[:comeback_to].should == "/referer"
    end
  end
end
