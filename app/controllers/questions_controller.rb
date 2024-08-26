class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @question = params[:message]

    @answer = stupid_coach(@question)
  end

  private

  def stupid_coach(message)
    if message == 'I am going to work!'
      'Great!'
    elsif message.end_with?('?')
      'Silly question, get dressed and go to work!'
    else
      "I don't care, get dressed and go to work!"
    end
  end
end
