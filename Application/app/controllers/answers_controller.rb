class AnswersController < ApplicationController

    # para GET
    def index
      answers = Answer.all
      render json:answers, status:200
    end

    # para SHOW
    def show
      answer = Answer.find(params[:idAnswer])
      respond_to do |format|
         format.json {render json: answer, status:200}
      end
    end

    # Para POST
    def create
        answer = Answer.new(params_answer)
        if answer.save
            render json:answer, status:201
        else
            render json:answer.errors, status: :unprocessable_entity
        end
    end

    # para DELETE
    def destroy
        answer = Answer.find(params[:idAnswer])
        answer.destroy
        respond_to do |format|
            format.json {render json: answer, status: 200}
        end
    end

    #para PUT o PATCH
    def update
        answer = Answer.find(params[:id])
        if answer.update(params_answer)
            render json: answer, status: 200
        else
            render json: answer.errors, status: 422
        end

    end

    def params_answer
        params.permit(:idAnswer, :Description, :Qualification, :Date)
    end
end
