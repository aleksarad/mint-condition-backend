class Category < ApplicationRecord
    has_many :tasks
    has_many :days, through: :tasks
end
