begin
  require_relative "lib/thwait/version"
rescue LoadError
  # for Ruby core repository
  require_relative "version"
end

Gem::Specification.new do |spec|
  spec.name          = "thwait"
  spec.version       = ThreadsWait::VERSION
  spec.authors       = ["Keiju ISHITSUKA"]
  spec.email         = ["keiju@ruby-lang.org"]

  spec.summary       = %q{Watches for termination of multiple threads.}
  spec.description   = %q{Watches for termination of multiple threads.}
  spec.homepage      = "https://github.com/ruby/thwait"
  spec.license       = "BSD-2-Clause"

  spec.files         = Dir["lib/**/*.rb", "LICENSE.txt", "README.md"]
  spec.require_paths = ["lib"]

  spec.add_dependency "e2mmap"
end
