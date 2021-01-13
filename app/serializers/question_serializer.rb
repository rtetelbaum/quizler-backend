class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :question, :quiz_id
  belongs_to :quiz
	has_many :answers
end
