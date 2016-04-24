FactoryGirl.define do
  factory :user do
    first_name            'Ringo'
    last_name             'Star'
    sequence :email do |n|
      "person#{n}@example.com"
    end
    password              'password'
    password_confirmation 'password'
  end

  factory :census do
    description  'Who would make the best president?'
    option_01    'Gary Busey'
    option_02    'Donald Trump'
    option_03    'Meat Loaf'
    duration     '24 Hours'
    active       true
    association  :user
    end_time     Time.now + 24.hours
  end
end
