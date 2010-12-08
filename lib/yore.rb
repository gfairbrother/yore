# cant run commands like `history` as it's a bash builtin, i.e. `which history` returns nothing
#puts history_file_location = `echo $HISTFILE`
#puts ENV['HISTFILE']

# so for now it's dirty, but works for me, I have to just load in
bash_history_file = "/Users/#{`whoami`.strip}/.bash_history"

# load history items into an array
history = []
bash_history_file = File.new(bash_history_file, 'r')
while (history_item = bash_history_file.gets)
  history << history_item
end

# remove duplicate entries
history.uniq!

#puts "Search term: "
#term = gets
#
#puts "Commands containing: #{term}"

#history.each do |h|
#  puts h
#end


