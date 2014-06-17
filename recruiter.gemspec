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

  s.add_dependency "rails", "~> 4.1.1"

  s.add_development_dependency "sqlite3"
end
