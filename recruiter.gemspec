$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "recruiter/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "recruiter"
  s.version     = Recruiter::VERSION
  s.authors     = ["Marcelo Jacobus"]
  s.email       = ["Marcelo.Jacobus@gmail.com"]
  s.homepage    = "https://github.com/mjacobus/recruiter"
  s.summary     = "Recruiter is a Rails Engine for adding job posting functionality to a Rails APP"

  s.description = <<-DESCRIPTION
    Recruiter is a Rails Engine for adding job posting functionality to a Rails APP.

    Users should be able to post articles
  DESCRIPTION

  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency 'kaminari'
  s.add_dependency 'devise'
  s.add_dependency 'omniauth'
  s.add_dependency 'omniauth-facebook'
  s.add_dependency 'omniauth-google_oauth2'
  s.add_dependency 'omniauth-github'
  s.add_dependency 'redcarpet'

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "shoulda-matchers"
  s.add_development_dependency "rspec-rails", '3.0.0.beta2'
  s.add_development_dependency "simplecov"
  s.add_development_dependency "coveralls"
  s.add_development_dependency "machinist"
  s.add_development_dependency "interactive_editor"
  s.add_development_dependency "capybara"
  s.add_development_dependency "faker"
  s.add_development_dependency "spring-commands-rspec"
end
