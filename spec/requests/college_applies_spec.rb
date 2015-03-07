require 'rails_helper'

RSpec.describe "CollegeApplies", :type => :request do
  describe "GET /college_applies" do
    it "works! (now write some real specs)" do
      get college_applies_path
      expect(response).to have_http_status(200)
    end
  end
end
