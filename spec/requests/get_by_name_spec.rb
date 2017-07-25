require 'rails_helper'

describe "get by rock name route", :type => :request do
  rock = FactoryGirl.create(:rock)

  it 'returns successfull route response' do
    get "/rocks/by_name?name=#{rock.name}"
    expect(response).to have_http_status(200)
  end
end
