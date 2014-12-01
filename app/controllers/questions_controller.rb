class QuestionsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  
  #index action - lists all question sorted by newly created
  def index
    @questions = Question.paginate(page: params[:page], per_page: 15).order('created_at DESC')
  end

  #New action renders new.html.erb for new Question creation
  def new
    @question = Question.new
  end

  #create methoed invoked from the form rendered by the new action
  def create
    @user = current_user
    @question = @user.questions.new(question_params)
    
    respond_to do |format|
      if @question.save
        format.html { redirect_to @question, notice: 'Question successfully created.' }
        format.json { render action: 'show', status: :created, location: @question }
      else
        format.html { render action: 'new' }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
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
    respond_to do |format|
      if @question.update(question_params)
        format.html { redirect_to @question, notice: 'Question successfully updated.' }
        format.json { head :no_content}
      else
        format.html { render action: 'edit' }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end

  #Delete action deletes the corresponding question from the database.
  def destroy
    @question = Question.find(params[:id])
    @question.destroy
    respond_to do |format|
      format.html { redirect_to questions_url }
      fotmat.json { head :no_content }
    end
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
