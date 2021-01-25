class Quiz < ApplicationRecord
	validates :quizmaker_name, :quizmaker_email, :title, :subject, presence: true
	belongs_to :user
	has_many :questions, dependent: :destroy
end
