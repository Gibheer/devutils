# -*- encoding: utf-8 -*-
require File.expand_path('../lib/devutils/version', __FILE__)

Gem::Specification.new do |s|
  s.name = 'devutils'
  s.version = DevUtils::VERSION

  s.authors = ['Stefan Radomski']
  s.description = %q{a small tool for handling subtasks of projects}
  s.summary = s.description
  s.email = 'gibheer@gmail.com'
  s.homepage = 'https://github.com/gibheer/devutils'
  s.licenses = ['3-clause BSD']
  s.rubygems_version = '1.8.24'

  s.files = `git ls-files`.split("\n")
  s.extra_rdoc_files = ['LICENSE', 'README.md']
  s.executables = `git ls-files -- bin/*`.split("\n").map{|f| File.basename(f)}
  s.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_paths = ['lib']

  s.add_dependency('thor')
  s.add_dependency('rspec')
end
