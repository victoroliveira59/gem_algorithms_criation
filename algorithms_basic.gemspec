require_relative "lib/ruby_version/version"

Gem::Specification.new do |s|
	s.authors = ["Victor Oliveira"]

	s.name = "algorithms_basic"
	s.email = ["victorsamueloliveira59@gmail.com"]

	s.summary = "A gem to partition an array of integers based on parity"
	s.description = "This gem was created with the intention of developing my skills as a programmer and also provides help for beginners and precisely improve their logic."
	s.version = RubyVersion::VERSION
	s.license = "MIT"
	s.required_ruby_version = ">= 3.0.2"

	s.metadata["allowed_push_host"] = "https://rubygems.org"

	s.metadata["source_code_uri"] = "https://github.com/victoroliveira59/gem_algorithms_criation"
	# s.metadata["changelog_uri] = "

	s.files = Dir["lib/**/*.rb"]



end