# This file is used by Rack-based servers to start the application.

require 'mongoid'
Mongoid.load!("./config/mongoid.yml")

#TODO application.rb with auto_load of directories
require ::File.expand_path('../app/api/account_api', __FILE__)
require ::File.expand_path('../app/models/user', __FILE__)

root = 'public'

use Rack::Static,
  :urls => Dir.glob("#{root}/*").map { |fn| fn.gsub(/#{root}/, '')},
  :root => root,
  :index => 'index.html',
  :header_rules => [[:all, {'Cache-Control' => 'public, max-age=3600'}]]

run AccountAPI