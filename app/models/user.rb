class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :posts
  enum :gender, { unspecified: 0, male: 1, female: 2, other: 3 }
  has_one_attached :avatar
end
