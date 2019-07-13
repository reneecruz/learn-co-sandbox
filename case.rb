# Conclusion:  Now you have one more way of communicating selection to Ruby, the case statement. For simple values, use ternary. For an if with an else and maybe an elsif use an if. For multiple cases, use a case statement.

greeting = "friendly_greeting"

case greeting
  when "unfriendly greeting"
    puts "What do you want?"
  when "friendly_greeting"
    puts "Hi! How are you?"
end

current_weather = "raining"

case current_weather
  when "sunny"
    puts "grab some sunscreen!"
  when "raining"
    puts "grab an umbrella!"
  when "snowing"
    puts "bundle up"
end