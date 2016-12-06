# -*- encoding: utf-8 -*-
# stub: rakuten_web_service 1.4.1 ruby lib

Gem::Specification.new do |s|
  s.name = "rakuten_web_service"
  s.version = "1.4.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Tatsuya Sato"]
  s.date = "2016-11-22"
  s.description = "Ruby Client for Rakuten Web Service"
  s.email = ["tatsuya.b.sato@mail.rakuten.com"]
  s.homepage = "http://webservice.rakuten.co.jp/"
  s.licenses = ["MIT"]
  s.required_ruby_version = Gem::Requirement.new(">= 2.1.0")
  s.rubygems_version = "2.5.1"
  s.summary = "Ruby Client for Rakuten Web Service"

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>, ["~> 1.3"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<webmock>, ["~> 1.20.4"])
      s.add_development_dependency(%q<rspec>, ["~> 3.5.0"])
      s.add_development_dependency(%q<tapp>, [">= 0"])
    else
      s.add_dependency(%q<bundler>, ["~> 1.3"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<webmock>, ["~> 1.20.4"])
      s.add_dependency(%q<rspec>, ["~> 3.5.0"])
      s.add_dependency(%q<tapp>, [">= 0"])
    end
  else
    s.add_dependency(%q<bundler>, ["~> 1.3"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<webmock>, ["~> 1.20.4"])
    s.add_dependency(%q<rspec>, ["~> 3.5.0"])
    s.add_dependency(%q<tapp>, [">= 0"])
  end
end
