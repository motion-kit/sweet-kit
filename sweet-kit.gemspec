# -*- encoding: utf-8 -*-
require File.expand_path('../lib/sweet-kit/version.rb', __FILE__)

Gem::Specification.new do |spec|
  spec.name          = 'sweet-kit'
  spec.version       = SweetKit::VERSION
  spec.licenses      = ['BSD']

  spec.authors       = ['Colin T.A. Gray']
  spec.email         = ['colin@hipbyte.com']

  spec.description   = %q{MotionKit + SugarCube = SweetKit}
  spec.summary       = <<-DESC
Some handlers for MotionKit that add the coercion abilities of SugarCube to the
style abilities of MotionKit, for great good.
DESC
  spec.homepage    = 'https://github.com/rubymotion/sweet-kit/README.md'

  files = []
  files << 'README.md'
  files.concat(Dir.glob('lib/**/*.rb'))
  spec.files         = files
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'motion-kit'
  spec.add_dependency 'sweettea'
end
