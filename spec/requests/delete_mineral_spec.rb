require 'rails_helper'

describe "the delete mineral route", :type => :request do

  it 'returns a deleted status' do
    rock = FactoryGirl.create(:rock_with_minerals)
    get "/rocks/#{rock.id}/minerals/#{rock.minerals[0].id}"
    delete "/rocks/#{rock.id}/minerals/#{rock.minerals[0].id}"
    expect(response).to have_http_status(200)
  end
end
