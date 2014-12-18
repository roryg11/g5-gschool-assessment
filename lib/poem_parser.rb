

#need a program to read through text files and -- File.read
#store information based on the /
#text until / = title
# text at 2nd / = Author
# then start counting lines, exluding lines that have / without any text
# verses are in between solitary /
# Additionally each line starts with a capital letter
# cannot figure out how ruby reads texts files-- REGEX!!!!
#struggling now to figure out the right code to use with REGEX



poem = File.read('data/poem_01.txt')

#method that gives you the poem title
def title(poem)
  #poem =~ /from start of the line to the first return/
  #should only return that string
end

#method that gives you the poem author
def author(poem)
  #poem =~ /from the start of the 2nd line to the 2nd return/
  #should only return this string
end

#method that gives you the number of verses in the poem
def number_of_verses(poem)
  #poem
  # should return an integer
end

#method that identifies the number of lines in the poem
def number_of_lines(poem)
end

poems = {}

Dir.glob('data/*.rb').each do |poem|
  poems["#{poem.author}"] = "#{poem.title}"
  poems["#{poem.author}"]["#{poem.title}"] = {verse: poem.number_of_verses, lines: poem.number_of_lines}  
end
