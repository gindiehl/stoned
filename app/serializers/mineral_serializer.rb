class MineralSerializer < ActiveModel::Serializer
  belongs_to :rock
  attributes :name, :category, :image, :crystal_system, :color, :crystal_habit, :cleavage, :hardness, :luster, :streak, :diaphaneity, :geo_location
end
