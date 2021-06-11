class DogFile < ApplicationRecord
    belongs_to :user 

    validates :user_id, :name, :age, :weight, :breed, :sex, presence: true 
end
