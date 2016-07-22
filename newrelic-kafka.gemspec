# -*- encoding: utf-8 -*-
require File.expand_path("../lib/newrelic-kafka/version", __FILE__)

Gem::Specification.new do |gem|
  gem.authors     = ["Joel Stimson"]
  gem.email       = ["joel@apptentive.com"]
  gem.description = %q{Unofficial New Relic instrumentation for ruby-kafka Producer}
  gem.summary     = %q{Unofficial New Relic instrumentation for ruby-kafka Producer}
  gem.homepage    = "http://github.com/apptentive-engineering/newrelic-kafka"
  gem.license     = "MIT"

  gem.files         = Dir["{lib}/**/*.rb", "LICENSE", "*.md"]
  gem.name          = "newrelic-kafka"
  gem.require_paths = ["lib"]
  gem.version       = NewrelicKafka::VERSION

  gem.add_dependency "newrelic_rpm", "~> 3.11", ">= 3.11.0.283"
end
