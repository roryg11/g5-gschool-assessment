
#Process:
#tried regex to figure everything out and realized that
#I needed to put my information in using the "lines" method
#from there I was able to get title and author
#struggled with finding a way to get verses and lines, but tried using regex
#regex didn't solve my line/verse problems
#wrote out potential code to pull in all of the poem files and push them into a hash
# will find below
# tried putting these in a class, but I was running out of time, so I opted to
# just make general methods... although I can't get some of them to work.
# would love to finish this over break.


poem = File.read('data/poem_01.txt')

def poem_to_array(poem)
  poem.lines
end

def title(poem)
  poem_array = poem.lines
  title = poem_array[0].chomp
end

def author(poem)
  poem_array = poem.lines
  author = poem_array[1].chomp
end

#feel free to comment these out

def number_of_verses(poem)
  verse_array = []
  poem.each_line do |line|
    if line =~ /\n/ && line !~ /a-zA-Z/
      verse_array.push("verse")
    end
  end
  verse_array.length
end

def number_of_lines(poem)
  line_array = []
  poem.each_line do |line|
    line_array << line.count
  end
  line_array.length
end

# Iterating through all of the files and putting it into a hash, didn't get far
# enough to get this to work

# Dir.glob('data/*.rb').each do |poem|
#   poems["#{author(poem)}"] = "#{title(poem)}"
#   poems["#{author(poem)}"]["#{title(poem)}"] = {verse: number_of_verses(poem), lines: number_of_lines(poem)}
# end
