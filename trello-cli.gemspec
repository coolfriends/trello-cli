require File.join([File.dirname(__FILE__),'lib','trello-cli','version.rb'])

spec = Gem::Specification.new do |s|
  s.name = 'trello-cli'
  s.version = TrelloCli::VERSION
  s.author = 'Kyri Vanderpoel'
  s.email = 'vanderpoel.kyriay@gmail.com'
  s.homepage = 'http://your.website.com'
  s.platform = Gem::Platform::RUBY
  s.summary = 'CLI for interacting with Trello.
'
  s.files = `git ls-files`.split("
")
  s.require_paths << 'lib'
  s.extra_rdoc_files = ['README.rdoc','trello-cli.rdoc']
  s.rdoc_options << '--title' << 'trello-cli' << '--main' << 'README.rdoc' << '-ri'
  s.bindir = 'bin'
  s.executables << 'trello-cli'
  s.add_dependency('ruby-trello')

  s.add_development_dependency('pry')
  s.add_development_dependency('rake')
  s.add_development_dependency('rdoc')
  s.add_development_dependency('aruba')
  s.add_runtime_dependency('gli','2.18.0')
end
