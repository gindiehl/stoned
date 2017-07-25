require 'rails_helper'

describe "the update rock route", :type => :request do
  rock = FactoryGirl.create(:rock)

  it 'tests the put route' do
    put "/rocks/#{rock.id}", params: { :name => 'Fluorite'}
    get "/rocks/#{rock.id}"
    expect(JSON.parse(response.body)["name"]).to eq('Fluorite')
  end
end
