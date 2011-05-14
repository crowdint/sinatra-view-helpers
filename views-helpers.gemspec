# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "views-helpers/version"

Gem::Specification.new do |s|
  s.name        = "sinatra-view-helpers"
  s.version     = Views::Helpers::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Edwin Crus, Emmanuel Delgado, Omar Vargas"]
  s.email       = ["crowdint@crowdint.com"]
  s.homepage    = ""
  s.summary     = %q{Use ActionView::Helpers in Sinatra}
  s.description = %q{Use ActionView::Helpers in Sinatra}

  s.rubyforge_project = "views-helpers"

  s.add_dependency('activesupport', '>= 3.0.0')
  s.add_dependency('activemodel', '>= 3.0.0')

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
