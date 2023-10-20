class MyExamplesController < ApplicationController
  def fortune_teller
    strings = ["All signs point to 'yes.'", "It is decidedly so", "It is certain"]
    fortune = strings[rand(strings.length)]
    render json: { "Your fortune is:" => "#{fortune}" }
  end

  def lotto_numbers
    numbers = []
    6.times { numbers << rand(1..60) }
    render json: { "Winning numbers are": "#{numbers}" }
  end
end
