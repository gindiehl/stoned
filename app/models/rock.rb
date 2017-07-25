class Rock < ApplicationRecord
  has_many :minerals
  validates :name, :presence => true
  scope :by_name, -> (search) { where("name like ?", "%#{search}")}
end
