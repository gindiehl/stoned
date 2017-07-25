require 'rails_helper'

describe Mineral do
  it { should belong_to :rock }
  it { should validate_presence_of :name }
  it { should validate_presence_of :category }
  it { should validate_presence_of :image }
  it { should validate_presence_of :crystal_system }
  it { should validate_presence_of :crystal_habit }
  it { should validate_presence_of :color }
  it { should validate_presence_of :cleavage }
  it { should validate_presence_of :hardness }
  it { should validate_presence_of :luster }
  it { should validate_presence_of :streak }
  it { should validate_presence_of :diaphaneity }
  it { should validate_presence_of :geo_location }
end
