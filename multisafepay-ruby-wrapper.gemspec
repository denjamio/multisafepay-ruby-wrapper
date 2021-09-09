require_relative "lib/multisafepay/version"

Gem::Specification.new do |gem|
  gem.name = "multisafepay-ruby-wrapper"
  gem.version = Multisafepay::VERSION
  gem.authors = ["denjamio"]
  gem.email = ["denjamio@gmail.com"]

  gem.summary = "Unofficial MultiSafePay API Library for Ruby"
  gem.description = "Unofficial MultiSafePay API Library for Ruby. Simplifies integrating with the MultiSafePay API."
  gem.homepage = "https://github.com/denjamio/multisafepay-ruby-wrapper"
  gem.license = "MIT"

  gem.metadata["homepage_uri"] = gem.homepage
  gem.metadata["source_code_uri"] = gem.homepage

  gem.required_ruby_version = ">= 2.4"

  gem.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end

  gem.executables = gem.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  gem.require_paths = ["lib"]

  gem.add_dependency "faraday", "~> 1.7"
  gem.add_dependency "faraday_middleware", "~> 1.1"
end
