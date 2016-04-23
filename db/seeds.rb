# user = CreateAdminService.new.call
# puts 'CREATED ADMIN USER: ' << user.email
# AdminUser.create!(
#   # first_name: 'John',
#   # last_name: 'Lennon',
#   email: 'john@beatles.edu',
#   password: 'password',
#   password_confirmation: 'password'
# )
# User.create!(
#   # first_name: 'Ringo',
#   # last_name: 'Star',
#   email: 'ringo@beatles.edu',
#   password: 'password',
#   password_confirmation: 'password'
# )

10.times do
  User.create!(
  first_name:            Faker::Name.first_name,
  last_name:             Faker::Name.last_name,
  email:                 Faker::Internet.email,
  password:              'password',
  password_confirmation: 'password'
  )
end

20.times do
  Census.create!(
  description:  Faker::Hipster.sentence,
  option_01:    Faker::Lorem.sentence,
  option_02:    Faker::Lorem.sentence,
  option_03:    Faker::Lorem.sentence,
  end_time:     Time.now + 72.hours,
  active:       1,
  user_id:      rand(1..20)
  )
end

1000.times do
  Opinion.create!(
  user_id:       rand(1..20),
  census_id:     rand(1..40),
  chosen_option: rand(1..3)
  )
end

60.times do
  Comment.create!(
  user_id:    rand(1..20),
  census_id:  rand(1..40),
  comment:    Faker::Hipster.sentence
  )
end
