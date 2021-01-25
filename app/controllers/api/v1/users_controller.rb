class Api::V1::UsersController < ApplicationController

	def index
		users = User.all.includes(:quizzes)
		render json: users, :include => {:quizzes => {:questions => :answers}}, except: [:created_at, :updated_at]
	end

	def show
		user = User.find(params[:id])
		render json: user, :include => {:quizzes => {:questions => :answers}}, except: [:created_at, :updated_at]
	end

	def create
		user = User.create!(user_params)
		render json: user, except: [:created_at, :updated_at]
	end

	def destroy
		user = User.find(params[:id])
		user.destroy!
		render json: {}
	end

	def update
		user = User.find(params[:id])
		user.update(email: params[:email], first_name: params[:first_name], last_name: params[:last_name], password: params[:password])
		render json: user, except: [:created_at, :updated_at]
	end

	private

	def user_params
		params.permit(:email, :first_name, :last_name, :password)
	end

end
