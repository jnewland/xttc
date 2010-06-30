require 'yaml'
require 'active_support'
require 'active_resource'

begin
  CONFIG = YAML.load(File.read(ENV['HOME'] + '/.xttc'))
rescue
  puts """To use XTTC:\n
  $ vi ~/.xttc
  
site: http://tt.example.com/
api_key: sekret_key

  # secure this file
  $ chmod 700 ~/.xttc
"""
  exit(1)
end

class Project < ActiveResource::Base
  self.site = CONFIG["site"] || 'http://tt.entp.com/'
  self.api_key = CONFIG["api_key"]
end

class Status < ActiveResource::Base
  self.site = CONFIG["site"] || 'http://tt.entp.com/'
  self.api_key = CONFIG["api_key"]
end
