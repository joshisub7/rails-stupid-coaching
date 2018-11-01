class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @questionAsked = params[:question_input]
    @question = @questionAsked
    if @question == "I am going to work"
      @answer = "Great!"
    elsif @question.include? "?"
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
