unless User.first
  PASSWORD = 'secret'
  User.create email: 'admin@example.com', password: PASSWORD, password_confirmation: PASSWORD, admin: true
end
require "#{Rails.root}/db/gioco/db.rb"

badge_descriptions = [
  "Congratulations on earning your first badge! You can unlock more rewards just by playing :)",
  "You've played through 5 games! Go you! Keep going to unlock more rewards!",
  "You're on a roll! Its so EASY to play you might just become addicted!",
  "You've looked at 50 properties! We're sure you'll agree, this is far more interesting than searching for houses in the OLD way!",
  "Wow! 100 properties! Go take a break, your fingers must be tired!",
  "250 properties?! That's awesome!",
  "500 games played! Don't forget to take a break! :D",
  "1000 houses looked at, have any caught your eye?,"
  "2500 games played! Well done, that's quite an achievement!",
  "Your commitment deserves a reward... check you email soon :)",
  "We have no idea how you did it, but you've played through 10,000 games! Nice one! :D",
  "Hey, you got your first correct guess! Nice one! You can totally get more! :D",
  "You guessed 5 right... High Five!",
  "10 guesses right? You've done this before haven't you?!",
  "50 correct answers! You must know your stuff!",
  "100 of your choices were correct! Have a gold star!",
  "250 right answers! You're pretty good at this!",
  "500 property prices guessed correctly. Wow. Just Wow! :D",
  "1000 correct guesses?! Have you ever considered a career as an estate agent?",
  "2500 of your games have been correct! WOW!",
  "0110101011000001100000110000?! You must be a robot?! :P",
  "10,000?! Are you kidding me?! We'll be in touch with a nice surprise for you :)",
  "Hey! You checked out the full details of a property on the Zoopla website! Have a badge for it! :)",
  "5 full listings checked out :) You must be liking some of these properties?",
  "Those must be some mighty fine houses you're looking at!",
  "That's a fair few houses you're checking out! I hope you're not just cheating?",
  "Awesome! Just think how long it would have taken to visit all those houses in person!",
  "Seen anything you like yet?",
  "That's LOADS of houses checked out :D How many more have you got in you?",
  "You've saved yourself a couple of pairs of shoes with all that walking you would have otherwise have had to do!",
  "How many houses are you thinking of buying?! You've absorbed more information than the contents of most books!",
  "You should probably consider taking up property listing copywriting, 'cos you must be an absolute PRO at it by now! :D",
  "Thanks for leaving us your feedback on the site! We appreciate your input to help make this app even more awesome :)",
  "You spread the word about this app on Facebook! Here's a shiny badge to say thank you!",
  "Thanks for the tweet! If you included @howmuchisthathouse we'll be sure to tweet you back!"
  ]

Badge.order(:id).all.each do |badge|
  badge.description = badge_descriptions[badge.id]
  badge.save!
end