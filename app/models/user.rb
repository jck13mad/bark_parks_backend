class User < ApplicationRecord
    has_secure_password

    has_many :dog_files

    validates :username, :email, :password, presence: true 
end
