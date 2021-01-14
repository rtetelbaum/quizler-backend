class QuizSerializer < ActiveModel::Serializer
  attributes :id, :quizmaker, :title, :subject, :user_id
	has_many :questions
end
