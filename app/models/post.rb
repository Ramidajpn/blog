class Post < ApplicationRecord
    has_many :comments, dependent: :destroy
    has_many :likes, dependent: :destroy
    has_many :messages, dependent: :destroy
    belongs_to :user
    end
      
