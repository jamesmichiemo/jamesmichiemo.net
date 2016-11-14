require 'rails_helper'

RSpec.describe "Collectibles", :type => :request do
  describe "GET /collectibles" do
    it "works! (now write some real specs)" do
      get collectibles_path
      expect(response.status).to be(200)
    end
  end
end
