# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "cello/version"

Gem::Specification.new do |s|
  s.name        = "cello"
  s.version     = Cello::VERSION
  s.authors     = ["Camilo Ribeiro"]
  s.email       = ["cribeiro@thoughtworks.com"]
  s.homepage    = "http://github.com/camiloribeiro/cello"
  s.summary     = %q{Fast and simple Page-Object with BDD}
  s.description = %q{Cello is a framework that allows automate acceptance tests using page-object}

  s.rubyforge_project = "cello"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.default_executable = 'cello'

  s.require_paths = ["lib"]

  s.add_development_dependency 'cucumber'
  s.add_development_dependency 'watir-webdriver'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'hitch'
  s.add_development_dependency 'headless'
  s.add_development_dependency 'ruby-debug'
  s.add_development_dependency 'rcov'

  s.add_dependency 'cucumber'
  s.add_dependency 'rspec'
  s.add_dependency 'watir-webdriver'
  s.add_dependency 'selenium-webdriver'
  s.add_dependency 'ruby-debug'
end
