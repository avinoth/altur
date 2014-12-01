class AnswersController < ApplicationController
  def create
    @question = Question.find(params[:question_id])
    @answer = @question.answers.create(params[:answer].permit(:name, :response))

    respond_to do |format|
      if @answer.save
        format.html { redirect_to question_path(@question), notice: 'Answer successfully added.' }
        format.json { render action: 'show', status: :created, location: @answer }
      else
        format.html { render action: 'show' }
        format.json { render json: @answer.errors, status: :unprocessable_entity }
      end
    end

  end

  def destroy
    @question = Question.find(params[:question_id])
    @answer = @question.answers.find(params[:id])
    @answer.destroy

    redirect_to question_path(@question)
  end
end
