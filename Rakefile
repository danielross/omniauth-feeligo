require 'rubygems'
require 'rake'
require 'echoe'

Echoe.new('omniauth-feeligo', '0.1.0') do |p|
  p.description    = "Use omniauth with Feeligo."
  p.url            = "https://github.com/danielross/omniauth-feeligo"
  p.author         = "Daniel Ross"
  p.email          = "daniel@feeligo.com"
  p.ignore_pattern = ["tmp/*", "script/*"]
  p.development_dependencies = []
end

Dir["#{File.dirname(__FILE__)}/tasks/*.rake"].sort.each { |ext| load ext }
    