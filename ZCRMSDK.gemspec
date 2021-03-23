# frozen_string_literal: true

src = File.expand_path('src', __dir__)
$LOAD_PATH.unshift(src) unless $LOAD_PATH.include?(src)
require 'version'

Gem::Specification.new do |spec|
  spec.required_ruby_version = '>= 2.6'
  spec.name = 'ZCRMSDK'
  spec.version       = ZCRMSDK::VERSION
  spec.authors       = ['ZOHO CRM API TEAM']
  spec.email         = ['support@zohocrm.com']
  spec.metadata["source_code_uri"] = "https://github.com/zoho/zohocrm-ruby-sdk"
  spec.summary       = 'API client for Zoho CRM '
  spec.description   = 'An API client for CRM customers, with which they can call ZOHO CRM APIs with ease'
  spec.homepage      = 'https://www.zoho.com/crm/'
  spec.files = Dir['src/**/*']
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['src']
  spec.add_runtime_dependency 'cgi', '~> 0.1'
  spec.add_runtime_dependency 'csv', '~> 3.0'
  spec.add_runtime_dependency 'json', '~> 2.0'
  spec.add_runtime_dependency 'multipart-post', '~> 2.0'
  spec.add_runtime_dependency 'rest-client', '~> 2.0'
  spec.add_runtime_dependency 'uri', '~> 0.10'
  spec.add_runtime_dependency 'mysql2', '= 0.5.2'
end
