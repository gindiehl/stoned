require 'rails_helper'

describe "the update mineral route", :type => :request do

  it 'tests the put route' do
    rock = FactoryGirl.create(:rock_with_minerals)
    put "/rocks/#{rock.id}/minerals/#{rock.minerals[0].id}", params: { :name => 'Fluorite'}
    get "/rocks/#{rock.id}/minerals/#{rock.minerals[0].id}"
    expect(JSON.parse(response.body)["name"]).to eq('Fluorite')
  end
end
