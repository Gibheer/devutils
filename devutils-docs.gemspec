# -*- encoding: utf-8 -*-
require File.expand_path('../lib/devutils/version', __FILE__)

Gem::Specification.new do |s|
  s.name = 'devutils-docs'
  s.version = DevUtils::VERSION

  s.authors = ['Stefan Radomski']
  s.description = %q{A dependency for devutils, which mangages documentation.}
  s.summary = s.description
  s.email = 'gibheer@gmail.com'
  s.homepage = 'https://github.com/gibheer/devutils'
  s.licenses = ['3-clause BSD']
  s.rubygems_version = '1.8.24'

  s.files = []
  s.extra_rdoc_files = ['LICENSE', 'README.md']

  s.add_dependency('yard')
end
