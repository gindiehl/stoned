class Rock < ApplicationRecord
  has_many :minerals
  validates :name, :presence => true
end
