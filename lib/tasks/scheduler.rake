desc 'Check Active Censuses'
task update_feed: :environment do
  puts "Updating Censuses...\nThanks for Waiting!"
  Census.check_active
end

task add_censuses: :environment do
  puts "Updating Censuses...\nThanks for Waiting!"
  GlobalData.choose_and_create
end

task update_feed: :environment do
  puts "Updating Censuses...\nThanks for Waiting!"
  GlobalData.cast_opinions
  puts 'Update Complete!'
end
