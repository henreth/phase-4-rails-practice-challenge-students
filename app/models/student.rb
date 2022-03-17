class Student < ApplicationRecord
    belongs_to :Instructor
    
    validates :name, presence: true
end
