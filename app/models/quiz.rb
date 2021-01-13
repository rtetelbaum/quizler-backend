class Quiz < ApplicationRecord
	belongs_to :user
	validates :quizmaker, :title, :subject, presence: true
end
