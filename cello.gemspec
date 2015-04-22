# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "cello/version"

Gem::Specification.new do |s|
  s.name        = "cello"
  s.version     = Cello::VERSION
  s.authors     = ["Camilo Ribeiro"]
  s.email       = ["cribeiro@thoughtworks.com"]
  s.homepage    = "http://github.com/camiloribeiro/cello"
  s.license     = "Apache 2.0"
  s.summary     = %q{Fast and simple Page-Object with BDD}
  s.description = %q{Cello is a framework that allows automate acceptance tests using page-object}

  s.rubyforge_project = "cello"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.default_executable = 'cello'

  s.require_paths = ["lib"]

  s.add_development_dependency 'simplecov', '~> 0'
  s.add_development_dependency 'pry', '~> 0'
  s.add_development_dependency 'rake', '~> 0'
  s.add_development_dependency 'headless', '~> 0'
  s.add_development_dependency 'nyan-cat-formatter', '~> 0'

  s.add_dependency 'cucumber', '~> 1.3.17'
  s.add_dependency 'rspec', '~> 3.1.0'
  s.add_dependency 'watir-webdriver', '~> 0.6.11'
  s.add_dependency 'sourcify', '~> 0.5.0'
  s.add_dependency 'icecream', '~> 0.0.11'

end
