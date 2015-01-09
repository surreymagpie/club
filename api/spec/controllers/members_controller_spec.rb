require 'rails_helper'

RSpec.describe Api::V1::MembersController, :type => :controller do

  let!(:member) { create(:member) }

  describe "GET index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET show" do
    it "returns http success" do
      get :show, id: member.id
      expect(response).to have_http_status(:success)
    end
  end
end
