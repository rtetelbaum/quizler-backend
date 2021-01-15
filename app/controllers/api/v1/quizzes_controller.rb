class Api::V1::QuizzesController < ApplicationController

	def index
		quizzes = Quiz.all.includes(:questions)
		render json: quizzes, :include => {:questions => :answers}, except: [:created_at, :updated_at]
	end

	def show
		quiz = Quiz.find(params[:id])
		render json: quiz, :include => {:questions => :answers}, except: [:created_at, :updated_at]
	end

	def create
		quiz = Quiz.create!(quiz_params)
		render json: quiz, except: [:created_at, :updated_at]
	end

	def destroy
		quiz = Quiz.find(params[:id])
		quiz.destroy!
		render json: {}
	end

	def update
		quiz = Quiz.find(params[:id])
		quiz.update(quizmaker: params[:quizmaker], title: params[:title], subject: params[:subject])
		render json: quiz, except: [:created_at, :updated_at]
	end

	private

	def quiz_params
		params.permit(:quizmaker, :title, :subject, :user_id)
	end

end
