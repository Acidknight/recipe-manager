class User < ApplicationRecord
    has_secure_password

    has_many :recipes
    has_many :comments
    has_many :recipe_comments, through: :recipes, source: :comments

    validates :email, presence: true
    validates :username, presence: true, uniqueness:true
end
