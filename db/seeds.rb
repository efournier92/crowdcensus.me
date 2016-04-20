user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email
AdminUser.create!(
  # first_name: 'John',
  # last_name: 'Lennon',
  email: 'john@beatles.edu',
  password: 'password',
  password_confirmation: 'password'
)
User.create!(
  # first_name: 'Ringo',
  # last_name: 'Star',
  email: 'ringo@beatles.edu',
  password: 'password',
  password_confirmation: 'password'
)
