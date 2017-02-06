require 'rails_helper'

RSpec.describe ModelController, type: :controller do

  describe "GET #User" do
    it "returns http success" do
      get :User
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #name:string" do
    it "returns http success" do
      get :name:string
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #description:text" do
    it "returns http success" do
      get :description:text
      expect(response).to have_http_status(:success)
    end
  end

end
