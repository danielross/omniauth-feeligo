# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "omniauth-feeligo"
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Daniel Ross"]
  s.date = "2012-10-23"
  s.description = "Use omniauth with Feeligo."
  s.email = "daniel@feeligo.com"
  s.extra_rdoc_files = ["README.rdoc", "lib/omniauth-feeligo.rb"]
  s.files = ["README.rdoc", "Rakefile", "lib/omniauth-feeligo.rb", "Manifest", "omniauth-feeligo.gemspec"]
  s.homepage = "https://github.com/danielross/omniauth-feeligo"
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Omniauth-feeligo", "--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = "omniauth-feeligo"
  s.rubygems_version = "1.8.24"
  s.summary = "Use omniauth with Feeligo."

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
