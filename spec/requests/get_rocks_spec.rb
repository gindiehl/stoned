require 'rails_helper'

describe "get all rocks route", :type => :request do
  before { Rock.destroy_all }
  let!(:rocks) { FactoryGirl.create_list(:rock, 3)}

  before { get '/rocks'}

  it 'returns all rocks' do
    expect(JSON.parse(response.body).size).to eq(3)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end
