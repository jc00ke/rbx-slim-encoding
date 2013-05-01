require 'spec_helper'

describe BugController do

  describe "GET 'bork'" do
    it "returns http success" do
      get 'bork'
      response.should be_success
    end
  end

end
