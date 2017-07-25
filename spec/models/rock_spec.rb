require 'rails_helper'

describe Rock do
  it { should have_many :minerals }
  it { should validate_presence_of :name }
end
