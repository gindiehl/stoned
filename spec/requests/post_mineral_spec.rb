require 'rails_helper'

describe "post a mineral route", :type => :request do
  before do
    Rock.destroy_all
    rock = FactoryGirl.create(:rock)
    post "/rocks/#{rock.id}/minerals", params: { :name => 'Fluorite',
    :category => 'Halide', :image => 'public/images/fluorite.png',
    :crystal_system => 'Isometric', :color => '{purple, lilac, golden-yellow, green, colorless, blue, pink, champagne, brown}', :crystal_habit => '{Well-formed coarse sized crystals; also nodular, botryoidal, rarely columnar or fibrous; granular, massive}', :cleavage => 'octahedral', :hardness => 4, :luster => 'vitreous', :streak => 'white', :diaphaneity => '{transparent to translucent}', :geo_location => '{Fluorite occurs in low-to-high temperature hydrothermal veins, granites and granite pegmatites.}' }
  end

  it 'returns a mineral' do
    expect(JSON.parse(response.body)['name']).to eq('Fluorite')
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end
