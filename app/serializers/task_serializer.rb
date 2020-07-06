class TaskSerializer < ActiveModel::Serializer
  attributes :id, :content
  has_one :day
  has_one :category
end
