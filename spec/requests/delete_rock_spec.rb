require 'rails_helper'

describe "the delete rock route", :type => :request do
  rock = FactoryGirl.create(:rock)

  it 'returns a deleted status' do
    get "/rocks/#{rock.id}"
    delete "/rocks/#{rock.id}"
    expect(response).to have_http_status(200)
  end
end
