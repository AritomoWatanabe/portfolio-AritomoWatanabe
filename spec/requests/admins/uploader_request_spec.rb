require 'rails_helper'

RSpec.describe "Admins::Uploaders", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/admins/uploader/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /form" do
    it "returns http success" do
      get "/admins/uploader/form"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /upload" do
    it "returns http success" do
      get "/admins/uploader/upload"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /download" do
    it "returns http success" do
      get "/admins/uploader/download"
      expect(response).to have_http_status(:success)
    end
  end

end
