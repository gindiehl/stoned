class Mineral < ApplicationRecord
  belongs_to :rock
  validates :name, :category, :image, :crystal_system, :crystal_habit, :color, :luster, :hardness, :streak, :diaphaneity, :cleavage, :geo_location, :presence => true
  scope :random, -> (search) { where("random ?", "%#{search}")}

end
