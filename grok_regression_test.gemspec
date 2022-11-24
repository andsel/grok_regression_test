Gem::Specification.new do |s|
  s.name          = 'grok_regression_test'
  s.version       = '0.1.0'
  s.licenses      = ['Apache-2.0']
  s.summary       = "Grok regression test"
  s.description   = "Gem to test fregexp regression on JRuby 9.3.x"
  s.authors         = ['andsel']
  s.email           = 'info@elastic.co'
  s.homepage        = "http://www.elastic.co/guide/en/logstash/current/index.html"
  s.require_paths = ['lib']

  # Files
  s.files = Dir["lib/**/*","spec/**/*","*.gemspec","*.md","CONTRIBUTORS","Gemfile","LICENSE","NOTICE.TXT", "vendor/jar-dependencies/**/*.jar", "vendor/jar-dependencies/**/*.rb", "VERSION", "docs/**/*"]

  # Tests
  #s.test_files = s.files.grep(%r{^(test|spec|features)/})

  # Special flag to let us know this is actually a logstash plugin
  #s.metadata = { 'logstash_plugin' => 'true', 'logstash_group' => 'input'}

  # Gem dependencies
  s.add_dependency "cabin", ">=0.6.0"
end