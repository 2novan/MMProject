class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_one_attached :avatar
  has_many_attached :memes
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :email,
    presence: true,
    uniqueness: {case_sensitive: false}
  validates :username,
    presence: true,
    uniqueness: {case_sensitive: false}

    attr_writer :login

end
