class Recipe < ApplicationRecord
    belongs_to :user 
    has_many :comments
    has_many :user_comments, through: :comments, source: :user 

    validates :title, :description, :instructions, :preparation_time, :rating, presence: true
end
