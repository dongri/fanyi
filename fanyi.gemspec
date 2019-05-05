require File.expand_path('../lib/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Dongri Jin"]
  gem.email         = ["dongrify@gmail.com"]
  gem.description   = %q{Command.}
  gem.summary       = %q{Command.}
  gem.homepage      = "https://github.com/dongri/fanyi"
  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.name          = "fanyi"
  gem.version       = FANYI::VERSION
  gem.date          = %q{2019-05-05}
  gem.rdoc_options  = ["--charset=UTF-8"]
  gem.bindir        = "bin"
  gem.required_ruby_version = '>= 1.9.0'
  gem.extra_rdoc_files = [
    "README.md"
  ]
end