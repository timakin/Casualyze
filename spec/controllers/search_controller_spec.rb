require 'rails_helper'

RSpec.describe SearchController, :type => :controller do

  describe "GET result" do
    it "returns http success" do
      get :result
      expect(response).to have_http_status(:success)
    end
  end

end
