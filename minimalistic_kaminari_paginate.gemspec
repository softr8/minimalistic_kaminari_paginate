# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'minimalistic_kaminari_paginate/version'

Gem::Specification.new do |spec|
  spec.name          = "minimalistic_kaminari_paginate"
  spec.version       = MinimalisticKaminariPaginate::VERSION
  spec.authors       = ["Edwin Cruz"]
  spec.email         = ["softr8@gmail.com"]
  spec.description   = %q{Minimalistic kaminari paginate replacement, much faster}
  spec.summary       = %q{Built in kaminari paginate helper is great, highly customizable, but unfortunately slow}
  spec.homepage      = "https://github.com/softr8/minimalistic_kaminari_paginate"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
