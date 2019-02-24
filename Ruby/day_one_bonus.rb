correct_guess = false
correct_num = rand(10)

until correct_guess
  puts 'What is your guess?'
  user_guess = gets.to_i
  if user_guess == correct_num
    puts 'You guessed correct!'
    correct_guess = true
  else
    puts 'You guess wrong!'
  end
end
