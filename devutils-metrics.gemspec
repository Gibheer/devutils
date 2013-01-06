# -*- encoding: utf-8 -*-
require File.expand_path('../lib/devutils/version', __FILE__)

Gem::Specification.new do |s|
  s.name = 'devutils-metrics'
  s.version = DevUtils::VERSION

  s.authors = ['Stefan Radomski']
  s.description = %q{a small tool for handling subtasks of projects}
  s.summary = s.description
  s.email = 'gibheer@gmail.com'
  s.homepage = 'https://github.com/gibheer/devutils'
  s.licenses = ['3-clause BSD']
  s.rubygems_version = '1.8.24'

  s.files = []
  s.extra_rdoc_files = ['LICENSE', 'README.md']

  s.add_dependency('reek')
  s.add_dependency('flog')
  s.add_dependency('flay')
  s.add_dependency('roodi')
  s.add_dependency('mutant')
  s.add_dependency('simplecov') if RUBY_VERSION >= '1.9'
  s.add_dependency('pelusa') if RUBY_ENGINE >= 'rbx'
end
