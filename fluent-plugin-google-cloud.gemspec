Gem::Specification.new do |gem|
  gem.name          = 'fluent-plugin-google-cloud'
  gem.description   = <<-eos
   Fluentd plugins for the Stackdriver Logging API, which will make logs
   viewable in the Stackdriver Logs Viewer and can optionally store them
   in Google Cloud Storage and/or BigQuery.
   This is an official Google Ruby gem.
eos
  gem.summary       = 'fluentd plugins for the Stackdriver Logging API'
  gem.homepage      =
    'https://github.com/GoogleCloudPlatform/fluent-plugin-google-cloud'
  gem.license       = 'Apache-2.0'
  gem.version       = '0.8.0'
  gem.authors       = ['Stackdriver Agents Team']
  gem.email         = ['stackdriver-agents@google.com']
  gem.required_ruby_version = Gem::Requirement.new('>= 2.2')

  gem.files         = Dir['**/*'].keep_if { |file| File.file?(file) }
  gem.test_files    = gem.files.grep(/^(test)/)
  gem.require_paths = ['lib']

  gem.add_runtime_dependency 'fluentd'
  gem.add_runtime_dependency 'googleapis-common-protos'
  gem.add_runtime_dependency 'googleauth'
  gem.add_runtime_dependency 'google-api-client'
  gem.add_runtime_dependency 'google-cloud-logging'
  gem.add_runtime_dependency 'google-protobuf'
  gem.add_runtime_dependency 'grpc'
  gem.add_runtime_dependency 'json'
  gem.add_runtime_dependency 'opencensus'
  gem.add_runtime_dependency 'opencensus-stackdriver'

  gem.add_development_dependency 'mocha'
  # Keep this the same as in
  # https://github.com/fluent/fluent-plugin-prometheus/blob/master/fluent-plugin-prometheus.gemspec
  gem.add_development_dependency 'prometheus-client'
  # TODO(qingling128): Upgrade rake to 11.0+ after the following issues are
  # fixed because rake (11.0+) requires ALL variables to be explicitly
  # initialized.
  # https://github.com/googleapis/google-auth-library-ruby/issues/227
  # https://github.com/farcaller/rly/issues/2
  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'rubocop'
  gem.add_development_dependency 'test-unit'
  gem.add_development_dependency 'webmock'
  gem.add_development_dependency 'coveralls'
end
