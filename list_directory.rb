# Given the name of a directory:
# 1. For each file:
#   if it's a normal file:
#     show its name
#   if it's a directory:
#     for each file in the directory:
#       if it's a normal file:
#         show its name
#       if it's a directory:
#        ...
#
#USAGE: ruby list_directory.rb /home/tom/code

# ARGV.first is the first argument on the command line:
# ruby list_directory.rb . -> "Listing ."
# ruby list_directory.rb hello -> "Listing hello"
# ruby list_directory.rb hello world -> "Listing hello"
puts "Listing #{ARGV.first}"

# Dir[directory + "/*"] gives us an ARRAY of all files 1-level deep in directory
# puts with an ARRAY displays the array, one entry per line
puts Dir[ARGV.first + "/*"]

# true if filename is a directory, false if not
File.directory?(filename)

#if it is, we need to do what we just did again, but with a different value for ARGV.first
