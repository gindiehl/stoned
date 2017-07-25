require 'rails_helper'

describe "post a rock route", :type => :request do
  before do
    post '/rocks', params: { :name => 'test rock' }
  end

  it 'returns the name' do
    expect(JSON.parse(response.body)['name']).to eq('test rock')
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end
end
