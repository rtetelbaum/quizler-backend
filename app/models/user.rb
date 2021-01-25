class User < ApplicationRecord
	validates :email, uniqueness: true, presence: true
	validates :first_name, :last_name, :password, presence: true
	has_many :quizzes, dependent: :destroy
end
