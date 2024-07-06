require "rails_helper"

RSpec.describe "Hellos", type: :request do
  describe "ログインしていない場合" do
    it "ログイン画面にリダイレクトされる" do
      get root_path
      expect(response).to redirect_to new_user_session_path
    end
  end

  describe "GET /" do
    it "200を返す" do
      sign_in create(:user)
      get root_path
      expect(response).to have_http_status 200
    end
  end

  describe "GET /hello" do
    it "200を返す" do
      sign_in create(:user)
      get hello_index_path
      expect(response).to have_http_status 200
    end
  end
end
