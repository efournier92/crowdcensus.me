user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
