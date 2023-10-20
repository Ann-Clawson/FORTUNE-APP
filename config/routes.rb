Rails.application.routes.draw do
  get "/fortune_teller", controller: "my_examples", action: "fortune_teller"
  get "/lotto_numbers", controller: "my_examples", action: "lotto_numbers"
end
