require 'rails_helper'

describe "get random minerals route", :type => :request do
  before do
    Rock.destroy_all
    rock = FactoryGirl.create(:rock_with_minerals)
    get "/rocks/#{rock.id}/minerals/random"
  end

  it 'returns random minerals for a particular rock' do
    expect(JSON.parse(response.body).size).to eq(7)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end
