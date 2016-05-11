desc 'Check Active Censuses'
task refresh_crowdcensus: :environment do
  puts "Updating Censuses...\nThanks for Waiting!"
  Census.check_active
  GlobalData.choose_and_create
  GlobalData.cast_opinions
  GlobalData.cleanup_oldest
  puts 'Update Complete!'
end
