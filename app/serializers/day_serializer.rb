class DaySerializer < ActiveModel::Serializer
  has_many :tasks
  attributes :id, :created_at
end
