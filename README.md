devutils
========

These are small tools to make development easier in that they provide metagems
which pulls other common gems for development purposes.

usage
-----

To use devutils, first install the gem with

    $ gem install devutils

Now that it is available, you can use it to create new projects

    $ devutils init foo

This will create a directory structure in foo with a Gemfile already placed.
That Gemfile will hold 4 gems, which will pull in other dependencies most need
for development. If you don't want a dependency or want to use another one, you
are free to, as devutils will never again touch any files.

You can modify the behaviour with the following flags

* --metrics/--no-metrics:
  install tools for meassuring code quality (default: true)
* --docs/--no-docs:
  installs yard for documentation (default: true)
* --guard/--no-guard:
  installs rudimentary guard support (default: true)

dependencies
------------

The dependencies of the gems are as follows

### devutils

* [rspec][rspec]: for writing specs

### devutils-docs

* [yard][yard]: to parse documentation into html files

### devutils-metrics

* [reek][reek]: a tool for code smell detection
* [flog][flog]: creates pain reports of the code
* [flay][flay]: finds duplicated code
* [roodi][roodi]: an object oriented code infometer
* [mutant][mutant]: a mutation testing tool
* [simplecov][simplecov]: a test coverage reporting tool (needs ruby > 1.8)
* [pelusa][pelusa]: a code analytics tool (needs rubinius)

### devutils-guard

* [guard][guard]:
  a tool to run automatic tasks on file changes (makes testing nicer)
* [guard-rspec][guard-rspec]: runs your specs automatically
* [guard-bundler][guard-bundler]: runs bundler, when your Gemfile changes

[yard]: http://yardoc.org/
[reek]: https://github.com/troessner/reek/wiki
[flog]: https://github.com/seattlerb/flog
[flay]: https://github.com/seattlerb/flay
[rspec]: http://rspec.info/
[roodi]: https://github.com/martinjandrews/roodi
[guard]: https://github.com/guard/guard
[mutant]: https://github.com/mbj/mutant
[pelusa]: http://codegram.github.com/pelusa/
[simplecov]: https://github.com/colszowka/simplecov
[guard-rspec]: https://github.com/guard/guard-rspec
[guard-bundler]: https://github.com/guard/guard-bundler
