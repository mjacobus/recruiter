module Recruiter
  class Engine < ::Rails::Engine
    isolate_namespace Recruiter

    config.generators do |generate|
      generate.decorator false
      generate.helper false
      generate.javascript_engine false
      generate.request_specs false
      generate.routing_specs true
      generate.stylesheets false
      generate.test_framework :rspec
      generate.integration_tool :rspec
      generate.view_specs false
      generate.fixture_replacement :machinist
    end
  end
end
