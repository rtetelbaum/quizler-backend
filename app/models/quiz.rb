class Quiz < ApplicationRecord
	validates :quizmaker, :title, :subject, presence: true
	belongs_to :user
	has_many :questions, dependent: :destroy
end
