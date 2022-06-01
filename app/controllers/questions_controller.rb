class QuestionsController < ApplicationController
  def ask
    @question
  end

  def answer
    if params[:question] == ('I am going to work right now!' || your_message.upcase == 'I AM GOING TO WORK RIGHT NOW!')
      @answer = 'Great!'
    elsif params[:question].end_with?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
