require 'rails_helper'

describe "get all minerals route", :type => :request do
  before do
    Mineral.destroy_all
    rock = FactoryGirl.create(:rock_with_minerals)
    get "/rocks/#{rock.id}/minerals/page/1"
  end

  it 'returns all minerals' do
    expect(JSON.parse(response.body).size).to eq(7)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end
