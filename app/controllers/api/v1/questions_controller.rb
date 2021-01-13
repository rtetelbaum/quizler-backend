class Api::V1::QuestionsController < ApplicationController

	def index
		questions = Question.all.includes(:answers)
		render json: questions, except: [:created_at, :updated_at]
	end

	def show
		question = Question.find(params[:id])
		render json: question, except: [:created_at, :updated_at]
	end

	def create
		question = Question.create!(question_params)
		render json: question, except: [:created_at, :updated_at]
	end

	def destroy
		question = Question.find(params[:id])
		question.destroy!
		render json: {}
	end

	def update
		question = Question.find(params[:id])
		question.update(question: params[:question])
		render json: question, except: [:created_at, :updated_at]
	end

	private

	def question_params
		params.permit(:question, :quiz_id)
	end

end
