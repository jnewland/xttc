require 'yaml'

require 'rubygems'
require 'activesupport'
require 'activeresource'

begin
  CONFIG = YAML.load(File.read(ENV['HOME'] + '/.xttc'))
rescue
  puts """To use XTTC:\n
  $ vi ~/.xttc
  
site: http://tt.example.com/
username: foo
password: sekret

  # secure this file
  $ chmod 700 ~/.xttc
"""
  exit(1)
end

class Project < ActiveResource::Base
  self.site = CONFIG["site"] || 'http://tt.entp.com/'
  self.user = CONFIG["username"]
  self.password = CONFIG["password"]
end

class Status < ActiveResource::Base
  self.site = CONFIG["site"] || 'http://tt.entp.com/'
  self.user = CONFIG["username"]
  self.password = CONFIG["password"]
end