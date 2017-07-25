require 'rails_helper'

describe "it shows rock name when a request is made for getting minerals", :type => :request do

  before do
    Rock.destroy_all
    rock = FactoryGirl.create(:rock_with_minerals)
    get "/rocks/#{rock.id}/minerals/#{rock.minerals[0].id}"
  end

  it 'returns rock name for that mineral' do
    expect(JSON.parse(response.body)["rock"]["name"]).to eq("Igneous")
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end
