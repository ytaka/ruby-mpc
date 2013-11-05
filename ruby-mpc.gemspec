# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "mpc/version"

Gem::Specification.new do |spec|
  spec.name        = "ruby-mpc"
  spec.version     = MPC::VERSION
  spec.authors     = ["Takayuki YAMAGUCHI"]
  spec.email       = ["d@ytak.info"]
  spec.homepage    = ""
  spec.summary     = "Ruby bindings of MPC"
  spec.description = "Ruby bindings of MPC that is C library for complex number of multiple precision"
  spec.license = "GPLv3"

  spec.files         = `git ls-files`.split("\n")
  spec.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  spec.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  spec.require_paths = ["lib", "ext"]
  spec.extensions    = Dir.glob('ext/**/extconf.rb')

  # specify any dependencies here; for example:
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "yard"
  spec.add_development_dependency "extconf-task"
  spec.add_runtime_dependency "ruby-mpfr"
end
