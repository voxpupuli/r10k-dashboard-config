#!/usr/bin/env ruby

# this works with Ruby 3
require 'puppet_forge'

# Get a list of all modules + their last version from one forge account
account = 'puppet'
PuppetForge.user_agent = "VoxPupuli/1.0 Puppetfile generator"
vp = PuppetForge::User.find(account)
modules = vp.modules.unpaginated.map{|mod| { 'name' => "#{mod.owner.slug}/#{mod.name}", 'version' => mod.current_release.version}}

File.open('Puppetfile', 'w+') do |file|
  modules.each do |mod|
    file.write("mod '#{mod['name']}', '#{mod['version']}'\n")
  end
end
