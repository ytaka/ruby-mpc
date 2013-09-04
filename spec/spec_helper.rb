require "rspec"

gem_root = File.expand_path(File.join(File.dirname(__FILE__), ".."))
$:.unshift(File.join(gem_root, "lib"))
Dir.glob(File.join(gem_root, "ext/*")).each do |dir|
  $:.unshift(dir)
end

require "mpfr"
require "mpc"
require File.join(gem_root, "spec/mpc/generate_complex_number")
