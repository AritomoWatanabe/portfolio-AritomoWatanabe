class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

	has_many :attendance_records


	validates :family_name, presence: true
  	validates :first_name, presence: true
  	validates :family_name_kana, presence: true, format: { with: /\A[\p{katakana}\p{blank}ー－]+\z/ }, length: { maximum: 20 }
  	validates :first_name_kana, presence: true, format: { with: /\A[\p{katakana}\p{blank}ー－]+\z/}, length: { maximum: 20 }
  	validates :address, presence: true
  	validates :telephone_number, presence: true, numericality: { only_integer: true }
  	validates :email, presence: true

end
