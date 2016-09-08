# Encoding: UTF-8

Gem::Specification.new do |s|
  s.platform          = Gem::Platform::RUBY
  s.name              = 'refinerycms-what_cooking_blocks'
  s.version           = '1.0'
  s.description       = 'Ruby on Rails What Cooking Blocks extension for Refinery CMS'
  s.date              = '2016-09-08'
  s.summary           = 'What Cooking Blocks extension for Refinery CMS'
  s.authors           = 
  s.require_paths     = %w(lib)
  s.files             = Dir["{app,config,db,lib}/**/*"] + ["readme.md"]

  # Runtime dependencies
  s.add_dependency             'refinerycms-core',    '~> 3.0.4'
  s.add_dependency             'acts_as_indexed',     '~> 0.8.0'

  # Development dependencies (usually used for testing)
  s.add_development_dependency 'refinerycms-testing', '~> 3.0.4'
end