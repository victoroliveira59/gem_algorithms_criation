

require_relative "ruby_version/version"

module RubyVersion
	class Error < StandardError; end
	def teste_primeira_gem
		"teste"
	end
end

class String
	include RubyVersion
end