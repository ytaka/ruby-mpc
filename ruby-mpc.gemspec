# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "mpc/version"

Gem::Specification.new do |s|
  s.name        = "ruby-mpc"
  s.version     = MPC::VERSION
  s.authors     = ["Takayuki YAMAGUCHI"]
  s.email       = ["d@ytak.info"]
  s.homepage    = ""
  s.summary     = "Ruby bindings of MPC"
  s.description = "Ruby bindings of MPC that is C library for complex number of multiple precision"

  s.rubyforge_project = "ruby-mpc"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib", "ext"]
  s.extensions    = Dir.glob('ext/**/extconf.rb')

  # specify any dependencies here; for example:
  s.add_development_dependency "rspec"
  s.add_development_dependency "yard"
  s.add_runtime_dependency "ruby-mpfr"
end
