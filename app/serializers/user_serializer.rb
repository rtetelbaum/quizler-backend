class UserSerializer < ActiveModel::Serializer
	attributes :id, :email, :first_name, :last_name, :password
	has_many :quizzes
end
