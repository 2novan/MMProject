class Game < ApplicationRecord
  has_one_attached :template
  # has_many_attached :memes
  has_many :players
end
