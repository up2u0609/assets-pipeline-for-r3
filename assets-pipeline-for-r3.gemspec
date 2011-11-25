# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name = %q{assets-pipeline-for-r3}
  s.version = "1.0"

  s.authors = ["johnson"]
  s.email = %q{up2u0609@gmail.com}
  s.post_install_message = %q{Thanks for installing sprockets_rails! It is created for ingrate sprockets magic into rails3.0 .}
  s.summary = %q{A rails (gem) plugin to enable sprockets in your application}

  s.files         = `git ls-files`.split("\n") - ['irb']
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency('rails', '~> 3.0')
  s.add_dependency('haml', '~> 3.1.3')
  s.add_dependency('sass')
  s.add_dependency('uuid')
  s.add_dependency('sprockets' , ">= 2.1.2")
  s.add_dependency('uglifier')

  s.add_development_dependency('yard')
  s.add_development_dependency('rake', '0.8.7')
  s.add_development_dependency('rspec-rails', '~> 2.6.0')
  s.add_development_dependency('bundler', '~> 1.0', '>= 1.0.21')
  s.add_development_dependency('database_cleaner', '~> 0.6.7')
  s.add_development_dependency('launchy', '~> 2.0.5')
  s.add_development_dependency('capybara', '~> 1.1.1')
  s.add_development_dependency('ci_reporter', '~> 1.6')
end

