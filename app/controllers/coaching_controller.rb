class CoachingController < ApplicationController
  RESPONSES = [
    { answer: "Silly question, get dressed and go to work!", category: "question" },
    { answer: "I don't care, get dressed and go to work!", category: "else" },
    { answer: "I can feel your motivation!", category: "both" }
  ]

  def ask
  end

  def answer
    if params[:query].include? "?"
      @category = "question"
    elsif params[:query] == "I am going to work right now!"
      @category = "both"
    else
      @category = "else"
    end
    # z.b. 'params[:query] = hello?' --> @category = question
    @answer = RESPONSES.select {|r| r[:category] == @category }[0][:answer]
    # answer is silly question if :category == 'hello'
  end
end
