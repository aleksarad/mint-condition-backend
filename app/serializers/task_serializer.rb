class TaskSerializer < ActiveModel::Serializer
  attributes :id, :content, :complete
  has_one :day
  has_one :category
end
