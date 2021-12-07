class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :recoverable, :trackable, :registerable and :omniauthable
  devise :database_authenticatable, :rememberable, :validatable
end
