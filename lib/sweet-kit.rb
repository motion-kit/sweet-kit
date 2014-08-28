# encoding: utf-8

unless defined?(Motion::Project::Config)
  raise "This file must be required within a RubyMotion project Rakefile."
end


require 'motion-kit'
require 'sugarcube'
platform = App.template
if platform == :ios
  require 'sugarcube-uikit'
elsif platform == :osx
  require 'sugarcube-appkit'
end
require 'sugarcube-color'
require 'sugarcube-constants'


Motion::Project::App.setup do |app|
  cocoa_lib_files = Dir.glob(File.join(File.dirname(__FILE__), "sweet-kit/cocoa/**/*.rb"))
  platform_lib_files = Dir.glob(File.join(File.dirname(__FILE__), "sweet-kit/#{platform}/**/*.rb"))

  insert_point = app.files.find_index { |file| file =~ /^(?:\.\/)?app\// } || 0

  platform_lib_files.reverse.each do |file|
    app.files.insert(insert_point, file)
  end
  cocoa_lib_files.reverse.each do |file|
    app.files.insert(insert_point, file)
  end

  DBT.analyze(app)
end
