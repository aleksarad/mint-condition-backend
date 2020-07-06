class Day < ApplicationRecord
    has_many :tasks
    has_many :categories, through: :tasks

    def self.test_cron 
        puts "created new day instance" 
    end
end
