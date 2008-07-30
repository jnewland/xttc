Gem::Specification.new do |s|
  s.name = %q{xttc}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jesse Newland"]
  s.date = %q{2008-07-28}
  s.default_executable = %q{xttc}
  s.description = %q{A command line bot for working with XTT, ENTP's rad time tracking bot}
  s.summary = %q{A command line bot for working with XTT, ENTP's rad time tracking bot}
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
  s.rubygems_version = %q{1.2.0}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if current_version >= 3 then
      s.add_runtime_dependency(%q<activesupport>, [">= 2.1"])
      s.add_runtime_dependency(%q<activeresource>, [">= 2.1.0"])
      s.add_runtime_dependency(%q<main>, [">= 2.8.2"])
      s.add_runtime_dependency(%q<highline>, [">= 1.4.0"])
    else
      s.add_dependency(%q<activesupport>, [">= 2.1"])
      s.add_dependency(%q<activeresource>, [">= 2.1.0"])
      s.add_dependency(%q<main>, [">= 2.8.2"])
      s.add_dependency(%q<highline>, [">= 1.4.0"])
    end
  else
    s.add_dependency(%q<activesupport>, [">= 2.1"])
    s.add_dependency(%q<activeresource>, [">= 2.1.0"])
    s.add_dependency(%q<main>, [">= 2.8.2"])
    s.add_dependency(%q<highline>, [">= 1.4.0"])
  end
end