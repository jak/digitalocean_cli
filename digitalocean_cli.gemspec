# Ensure we require the local version and not one we might have installed already
require File.join([File.dirname(__FILE__),'lib','digitalocean_cli','version.rb'])
spec = Gem::Specification.new do |s| 
  s.name = 'digitalocean_cli'
  s.version = DigitaloceanCli::VERSION
  s.author = 'Jak Spalding'
  s.email = 'jak@jak.io'
  s.homepage = 'http://jak.io'
  s.platform = Gem::Platform::RUBY
  s.summary = 'A CLI for DigitalOcean'
# Add your other files here if you make them
  s.files = %w(
bin/digitalocean
lib/digitalocean_cli/version.rb
lib/digitalocean_cli.rb
  )
  s.require_paths << 'lib'
  s.has_rdoc = true
  s.extra_rdoc_files = ['README.rdoc','digitalocean_cli.rdoc']
  s.rdoc_options << '--title' << 'digitalocean_cli' << '--main' << 'README.rdoc' << '-ri'
  s.bindir = 'bin'
  s.executables << 'digitalocean'
  s.add_development_dependency('rake')
  s.add_development_dependency('rdoc')
  s.add_development_dependency('aruba')
  s.add_runtime_dependency('gli','2.7.0')
  s.add_runtime_dependency('colombo', '0.0.5')
end
