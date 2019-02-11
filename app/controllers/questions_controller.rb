class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    extra = ""
    extra = "I can feel your motivation! " if @question == @question.upcase

    if @question == "I am going to work"
      statement = "Great !"
    elsif @question[-1] == "?"
      statement = "Silly question, get dressed and go to work!"
    else
      statement = "I don't care, get dressed and go to work!"
    end

    @answer = extra + statement
  end
end
