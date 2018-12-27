# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'catpix/version'

Gem::Specification.new do |spec|
  spec.name          = "catpix"
  spec.version       = Catpix::VERSION
  spec.authors       = ["Radek Pazdera"]
  spec.email         = ["me@radek.io"]
  spec.summary       = %q{Cat images into the terminal.}
  spec.description   = %q{Print images (png, jpg, gif and many others) in the
                          command line with ease. Using rmagick and tco in the
                          background to read the images and convert them into
                          the extended 256 colour palette for terminals.}
  spec.homepage      = "https://github.com/pazdera/catpix"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.required_ruby_version = ">= 1.9"

  spec.add_dependency "tco"
  spec.add_dependency "mini_magick"
  spec.add_dependency "docopt"
  spec.add_dependency "ruby-terminfo"

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
end
