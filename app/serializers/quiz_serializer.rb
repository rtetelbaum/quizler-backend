class QuizSerializer < ActiveModel::Serializer
  attributes :id, :quizmaker_name, :quizmaker_email, :title, :subject, :user_id
	has_many :questions
end
