class QuestionsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show, :userview]
  
  #index action - lists all question sorted by newly created
  def index
    @questions = Question.all.order('created_at DESC')
  end

  #New action renders new.html.erb for new Question creation
  def new
    @question = Question.new
  end

  #create methoed invoked from the form rendered by the new action
  def create
    @user = current_user
    @question = @user.questions.new(question_params)
    @question.save

    if @question.save
      redirect_to @question, notice: "Question successfully created"
    else
      render'new'
    end
  end

  #Show action for individual questions
  def show
    @question = Question.find(params[:id])
    @user = User.find(@question.user_id)
  end

  #Edit action renders edit.html.erb for Edit question
  def edit
    @question = Question.find(params[:id])
  end
 
  #update method invoked from the form rendered by the edit action
  def update
    @question = Question.find(params[:id])
 
    if @question.update(question_params)
      #redirect to show action
      redirect_to @question
    else
      render 'edit'
    end
  end

  #Delete action deletes the corresponding question from the database.
  def destroy
    @question = Question.find(params[:id])
    @question.destroy

    redirect_to questions_path
  end

  #Method to get posts sorted by user
  def userview
    @user = User.find(params[:user])
    @questions = @user.questions
  end

  private
    #Implementation of strong parameters, which draws a line which parameters to allow and which shouldn't.
    def question_params
      params.require(:question).permit(:question)
    end
end
