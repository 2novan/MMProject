class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :email,
    presence: true,
    uniqueness: {case_sensitive: false}
  validates :username,
    presence: true,
    uniqueness: {case_sensitive: false}

    attr_writer :login

    # def @login
    #   @login || username || email
    # end
    
    # def self.find_for_database_authentication(warden_conditions)
    #   conditions = warden_conditions.dup 
    #   login = conditions.delete(:login)
    #   where(conditions).where([
    #     "lower(username) = :value OR lower(email) = :value",
    #     { value: login.strip.downcase},
    #   ]).first
    # end
end
