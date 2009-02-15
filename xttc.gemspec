Gem::Specification.new do |s|
  s.name = %q{xttc}
  s.version = "0.1.6"
  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jesse Newland","Andy Henson"]
  s.date = %q{2008-02-15}
  s.default_executable = %q{xttc}
  s.description = %q{A command line bot for working with XTT, ENTP's rad time tracking app}
  s.summary = %q{A command line bot for working with XTT, ENTP's rad time tracking app}
  s.email = %q{jnewland@gmail.com}
  s.executables = ["xttc"]
  s.files = [
    'README',
    'bin/xttc',
    'lib/xttc.rb',
    'lib/cli.rb'
  ]
  s.has_rdoc = false
  s.homepage = %q{http://github.com/jnewland}
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{xttc}
  s.rubygems_version = %q{1.3.1}

  s.add_dependency(%q<activesupport>, [">= 2.2.2"])
  s.add_dependency(%q<activeresource>, [">= 2.2.2"])
  s.add_dependency(%q<main>, [">= 2.8.2"])
  s.add_dependency(%q<highline>, [">= 1.5.0"])
end
