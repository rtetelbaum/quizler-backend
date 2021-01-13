class QuizSerializer < ActiveModel::Serializer
  attributes :id, :quizmaker, :title, :subject, :user_id
	belongs_to :user
	has_many :questions
end
