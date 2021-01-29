#  bin/rails g controller cold_meadow/sms

class ColdMeadow::Controller < ApplicationController
  def create
    render json: { status: :accepted }, status: :accepted
  end
end

RSpec.describe "ColdMeadow::Request", type: :request do
  it "posting a message" do
    headers = { "content_type" => "application/json" }

    post "/cold_meadow/sms", params: { }, headers: headers

    expect(response).to have_http_status(:accepted)
    expect(JSON.parse(response.body)).to include("status" => "accepted")
  end
end