class DaySerializer < ActiveModel::Serializer
  has_many :tasks
  has_many :categories, through: :tasks
  attributes :id
end
