# encoding: utf-8

unless defined?(Motion::Project::Config)
  raise "This file must be required within a RubyMotion project Rakefile."
end


require 'motion-kit'
require 'sugarcube'


Motion::Project::App.setup do |app|
  platform = app.respond_to?(:template) ? app.template : :ios
  lib_files = Dir.glob(File.join(File.dirname(__FILE__), "sweet-kit/#{platform}/**/*.rb"))

  insert_point = app.files.find_index { |file| file =~ /^(?:\.\/)?app\// } || 0

  Dir.glob(File.join(lib_files, '**/*.rb')).reverse.each do |file|
    app.files.insert(insert_point, file)
  end

  DBT.analyze(app)
end
