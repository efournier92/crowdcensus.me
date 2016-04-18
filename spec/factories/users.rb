FactoryGirl.define do
  factory :user do
    first_name            'Ringo'
    last_name             'Star'
    email                 'ringo@beatles.edu'
    password              'password'
    password_confirmation 'password'
  end
end
