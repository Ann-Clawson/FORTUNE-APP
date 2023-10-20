class MyExamplesController < ApplicationController
  def fortune_teller
    strings = ["You will win the lottery", "No, im just kidding", "Don't amswer your next phone call"]
    fortune = strings[rand(strings.length)]
    render json: { "Your fortune is:" => "#{fortune}" }
  end

  def lotto_numbers
    numbers = (1..60).to_a
    lotto_numbers = []
    6.times do
      lotto_numbers << numbers[rand(numbers.length)]
    end
    render json: { "Winning numbers are:" => "#{lotto_numbers}" }
  end
end
