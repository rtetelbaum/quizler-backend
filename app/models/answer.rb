class Answer < ApplicationRecord
	validates :answer, presence: true
	validates_inclusion_of :correct, in: [true, false]
	belongs_to :question
end
