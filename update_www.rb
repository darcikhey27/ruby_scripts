require 'fileutils'

# DarciK
#
source = 'C:\javaTest'
destination = 'C:\ruby_test'

puts 'Running Script'
puts "---------------------\n"

puts "Current files in destination: #{destination}"
puts Dir.entries(destination)

puts "Deleting files in #{destination}"
Dir.foreach(destination){ |file| Dir.delete(file) }

puts "Copying files in #{source} to #{destination}"
Dir.foreach(source) do |file|
  FileUtils.copy(file, destination)
end

puts "All files are up to date"