class Quiz < ApplicationRecord
	belongs_to :user
	has_many :questions, dependent: :destroy
	validates :quizmaker, :title, :subject, presence: true
end
