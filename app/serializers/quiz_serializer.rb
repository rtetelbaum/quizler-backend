class QuizSerializer < ActiveModel::Serializer
  attributes :id, :quizmaker, :title, :subject
  has_one :user
end
