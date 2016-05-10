AdminUser.create!(
  first_name:            'Eric',
  last_name:             'Fournier',
  email:                 'efournier92@gmail.com',
  password:              'fifty5018',
  password_confirmation: 'fifty5018'
)

User.create!(
  first_name:            'Mike',
  last_name:             'Fletcher',
  email:                 'mfletcher@harvard.edu',
  password:              'nirVana1994',
  password_confirmation: 'nirVana1994'
)

User.create!(
  first_name:            'Taylor',
  last_name:             'Stewart',
  email:                 'lighttabor@gmail.com',
  password:              'phoebe123',
  password_confirmation: 'phoebe123'
)

User.create!(
  first_name:            'Janet',
  last_name:             'Campbell',
  email:                 'jcampbell84@gmail.com',
  password:              'bestparts#4!',
  password_confirmation: 'bestparts#4!'
)

User.create!(
  first_name:            'Oliver',
  last_name:             'Stewart',
  email:                 'oliverstewart@zoho.com',
  password:              'RalphRules098',
  password_confirmation: 'RalphRules098'
)

User.create!(
  first_name:            'Ken',
  last_name:             'Cassidy',
  email:                 'onefleweast@gmail.com',
  password:              'fuuurtheer65',
  password_confirmation: 'fuuurtheer65'
)

User.create!(
  first_name:            'Jed',
  last_name:             'Paisley',
  email:                 'jpaisley@bishops.edu',
  password:              '19tryintorun84',
  password_confirmation: '19tryintorun84'
)

User.create!(
  first_name:            'Amanda',
  last_name:             'Mullen',
  email:                 'amullen@ymail.com',
  password:              'LoLaCoLa',
  password_confirmation: 'LoLaCoLa'
)

User.create!(
  first_name:            'Alexis',
  last_name:             'Ryder',
  email:                 'horsebackryder@4H.com',
  password:              'ComeRidewithMe!',
  password_confirmation: 'ComeRidewithMe!'
)

User.create!(
  first_name:            'Sunni',
  last_name:             'Faye',
  email:                 'sunniwithachance@verizon.net',
  password:              'ofMeatballs',
  password_confirmation: 'ofMeatballs'
)

User.create!(
  first_name:            'Jackie',
  last_name:             'Rockwell',
  email:                 'jrockwell89@gmail.com',
  password:              'hEndrix69',
  password_confirmation: 'hEndrix69'
)

User.create!(
  first_name:            'Keith',
  last_name:             'Daniels',
  email:                 'kdaniels@cnn.com',
  password:              '0newsRoomlife0',
  password_confirmation: '0newsRoomlife0'
)

User.create!(
  first_name:            'Floyd',
  last_name:             'Pinkman',
  email:                 'floydpinkman52@gmail.com',
  password:              'aNoTherBriCK',
  password_confirmation: 'aNoTherBriCK'
)

User.create!(
  first_name:            'Sal',
  last_name:             'Gustafson',
  email:                 'gus@hstv.com',
  password:              'NineDeuce!',
  password_confirmation: 'NineDeuce!'
)

User.create!(
  first_name:            'Jesse',
  last_name:             'Jagger',
  email:                 'jj@cumbancha.com',
  password:              'inthebarn!',
  password_confirmation: 'inthebarn!'
)

User.create!(
  first_name:            'Whitney',
  last_name:             'Rambler',
  email:                 'wrambler93@gmail.com',
  password:              'keepWAlken',
  password_confirmation: 'keepWAlken'
)

User.create!(
  first_name:            'Juila',
  last_name:             'Morgan',
  email:                 'joolia@zoho.com',
  password:              '72milkMan',
  password_confirmation: '72milkMan'
)

User.create!(
  first_name:            'Hunter',
  last_name:             'Gleeson',
  email:                 'deerhunter@comcast.net',
  password:              '#99Problems',
  password_confirmation: '#99Problems'
)

User.create!(
  first_name:            'Art',
  last_name:             'Simon',
  email:                 'asimon@juliard.edu',
  password:              'GretchenFetchen',
  password_confirmation: 'GretchenFetchen'
)

User.create!(
  first_name:            'Jennifer',
  last_name:             'Lovitz',
  email:                 'meanqueen@yahoo.com',
  password:              'QueenOfMean',
  password_confirmation: 'QueenOfMean'
)

User.create!(
  first_name:            'Britney',
  last_name:             'Harrison',
  email:                 'bharrison@verizon.net',
  password:              'Gold&Silver',
  password_confirmation: 'Gold&Silver'
)

User.create!(
  first_name:            'John',
  last_name:             'Marion',
  email:                 'jmarion@hilton.com',
  password:              'getARoom!',
  password_confirmation: 'getARoom!'
)

User.create!(
  first_name:            'Howie',
  last_name:             'Dreyfus',
  email:                 'dreyman@suny.edu',
  password:              'Jaws2&3D',
  password_confirmation: 'Jaws2&3D'
)

15.times do
  GlobalData.choose_and_create
  GlobalData.cast_opinions
end

5.times do
  GlobalData.choose_and_create_closed
  closed = Census.where(active: false).sort_by{|census| census.created_at}.reverse
  closed.each do |census|
    6.times do
      Opinion.create(
        user_id:    rand(1..19),
        census_id:  census.id,
        chosen_option: rand(1..3)
      )
    end
  end
end
