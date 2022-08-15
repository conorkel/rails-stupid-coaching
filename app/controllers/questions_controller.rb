class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @ask = params[:ask]

    if @ask == "I am going to work now"
      @answer = 'Great!'

    elsif @ask.include? "?"
      @answer = "Silly question, get back to work!"

    else
      @answer = "I don't care, get dressed and go to work!"

    end

    # when params[:work]
    #   @answer = 'Great!'
    # when params[:time]
    #   @answer = time.now
    # when params[:something?]
    #   @answer = 'Silly question, get dressed and go to work!'
    # else
    #   @answer = "I don't care, get dressed and go to work!"
  end
end
