class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  #dependent destroy will remove all things if user is destroyed
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy

end
