class Player < ApplicationRecord
  has_many :games
  has_one_attached :avatar 
  has_many_attached :memes
end
