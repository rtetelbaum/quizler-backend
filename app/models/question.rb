class Question < ApplicationRecord
	validates :question, presence: true
	belongs_to :quiz
	has_many :answers, dependent: :destroy
end
