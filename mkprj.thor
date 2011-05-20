#!/usr/loca/bin/env ruby

require 'thor'

class Mkprj < Thor
  include Thor::Actions
  
  def self.source_root
    File.dirname(__FILE__)
  end
  
  
  desc "create MY_PROJECT", "create a blank web project"
  method_options :prjtype => "basic"
  def create(filename)
    if options[:prjtype] == "basic"
      holla(filename)
      directory "templates/basic", "#{filename}", :recursive => true
    elsif options[:prjtype] == "html5"
      holla(filename)
      directory "templates/html5", "#{filename}", :recursive => true
    elsif options[:prjtype] == "boilerplate"
      holla(filename)
      directory "templates/html5_boilerplate", "#{filename}", :recursive => true
    else
      puts "WTF?"
    end
  end
  
  no_tasks do
    def holla(filename)
      puts "You supplied the name: #{filename}"
      puts "creating directory: #{filename}"
    end
  end
  
end

#Mkprj.start