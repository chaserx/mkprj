#!/usr/loca/bin/env ruby

require 'thor'
require 'fileutils'

class Mkprj < Thor
  include Thor::Actions
  
  def self.source_root
    File.dirname(__FILE__)
  end
  
  
  desc "foo", "prints foo"
  def foo
    puts "foo"
  end

  desc "example FILE", "an example task that does something with a file"
  def example(file)
    puts "You supplied the file: #{file}"
  end

  desc "create", "create a blank web project"
  def create(filename)
    puts "You supplied the name: #{filename}"
    puts "creating directory: #{filename}"
    directory "templates/basic", "#{filename}", :recursive => true
    #empty_directory "#{filename}"
    #copy_file "templates/basic/index.html","#{filename}/index.html"
    #empty_directory "#{filename}/js"
    #empty_directory "#{filename}/css"
    
  end
end

#Mkprj.start