class Answer < ApplicationRecord
	belongs_to :question
	validates :answer, :correct, presence: true
end
