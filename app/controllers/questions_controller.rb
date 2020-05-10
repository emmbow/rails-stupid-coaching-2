class QuestionsController < ApplicationController
  def ask; end

  def answer
    @user_input = params[:user_input]
    @answer = if @user_input.include? '?'
                'Silly question, get dressed and go to work!'
              elsif @user_input == 'I am going to work'
                'Great'
              else
                "I don't care, get dressed and go to work!"
              end
  end
end
