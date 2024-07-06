require "rails_helper"

RSpec.describe "Hellos", type: :request do
  describe "GET /" do
    it "200を返す" do
      get root_path
      expect(response).to have_http_status 200
    end
  end

  describe "GET /hello" do
    it "200を返す" do
      get hello_index_path
      expect(response).to have_http_status 200
    end
  end
end
