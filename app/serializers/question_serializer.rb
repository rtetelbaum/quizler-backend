class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :question, :quiz_id
	has_many :answers
end
