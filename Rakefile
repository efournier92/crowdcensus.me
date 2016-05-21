require 'rspec/core/rake_task'
require 'coveralls/rake/task'
require File.expand_path('../config/application', __FILE__)

Rails.application.load_tasks

Coveralls::RakeTask.new
RSpec::Core::RakeTask.new(:spec)

task :default => [:spec, :features, 'coveralls:push']
