class Api::V1::AnswersController < ApplicationController

	def index
		answers = Answer.all
		render json: answers, except: [:created_at, :updated_at]
	end

	def show
		answer = Answer.find(params[:id])
		render json: answer, except: [:created_at, :updated_at]
	end

	def create
		answer = Answer.create!(answer_params)
		render json: answer, except: [:created_at, :updated_at]
	end

	def destroy
		answer = Answer.find(params[:id])
		answer.destroy!
		render json: {}
	end

	def update
		answer = Answer.find(params[:id])
		answer.update(answer: params[:answer], correct: params[:correct])
		render json: answer, except: [:created_at, :updated_at]
	end

	private

	def answer_params
		params.permit(:answer, :correct, :question_id)
	end

end
