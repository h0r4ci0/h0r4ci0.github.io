# -*- encoding: utf-8 -*-
# stub: jekflix 3.1.2 ruby lib

Gem::Specification.new do |s|
  s.name = "jekflix".freeze
  s.version = "3.1.2".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Thiago Rossener".freeze]
  s.date = "2022-09-27"
  s.email = ["thiago@rossener.com".freeze]
  s.homepage = "https://jekflix.rossener.com/".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.0.3.1".freeze
  s.summary = "A Jekyll theme inspired by Netflix.".freeze

  s.installed_by_version = "3.5.22".freeze

  s.specification_version = 4

  s.add_runtime_dependency(%q<rouge>.freeze, ["~> 3.3".freeze])
  s.add_runtime_dependency(%q<jekyll>.freeze, ["~> 3.8".freeze])
  s.add_runtime_dependency(%q<jekyll-paginate>.freeze, ["= 1.1.0".freeze])
  s.add_runtime_dependency(%q<jekyll-paginate-content>.freeze, ["= 1.1.0".freeze])
  s.add_development_dependency(%q<bundler>.freeze, ["~> 1.16".freeze])
  s.add_development_dependency(%q<rake>.freeze, ["~> 12.0".freeze])
end
