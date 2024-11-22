# -*- encoding: utf-8 -*-
# stub: gh_inspector 1.1.3 ruby lib

Gem::Specification.new do |s|
  s.name = "gh_inspector".freeze
  s.version = "1.1.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Orta Therox".freeze, "Felix Krause".freeze]
  s.date = "2018-03-06"
  s.description = "Search through GitHub issues for your project for existing issues about a Ruby Error.".freeze
  s.email = ["orta.therox@gmail.com".freeze, "gh_inspector@krausefx.com".freeze]
  s.homepage = "https://github.com/orta/gh_inspector".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.4.1".freeze
  s.summary = "Search through GitHub issues for your project for existing issues about a Ruby Error.".freeze

  s.installed_by_version = "3.4.1" if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_development_dependency(%q<bundler>.freeze, ["~> 1.11"])
  s.add_development_dependency(%q<pry>.freeze, ["~> 0.6"])
  s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
  s.add_development_dependency(%q<rspec>.freeze, ["~> 3.0"])
  s.add_development_dependency(%q<rubocop>.freeze, ["~> 0", "> 0"])
  s.add_development_dependency(%q<yard>.freeze, ["~> 0", "> 0"])
end
