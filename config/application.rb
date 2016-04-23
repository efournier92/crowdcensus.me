require 'rails/all'
require File.expand_path('../boot', __FILE__)

Bundler.require(*Rails.groups)

module Crowdcensus
  class Application < Rails::Application
    config.generators do |g|
      g.test_framework :rspec,
        fixtures: true,
        view_specs: false,
        helper_specs: false,
        routing_specs: false,
        controller_specs: false,
        request_specs: false
      g.fixture_replacement :factory_girl, dir: "spec/factories"
    end
    config.assets.paths << "#{Rails.root}/app/assets/fonts"
    config.assets.precompile += %w( vendor/modernizr )
    config.active_record.raise_in_transactional_callbacks = true
  end
end
