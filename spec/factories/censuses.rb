FactoryGirl.define do
  factory :census do
    description  'Who would make the best president?'
    option_01    'Gary Busey'
    option_02    'Donald Trump'
    option_03    'Meat Loaf'
    duration     '24 Hours'
    end_time     Time.now + 24.hours
  end
end
