class RockSerializer < ActiveModel::Serializer
  has_many :minerals
  attributes :name, :id
end
