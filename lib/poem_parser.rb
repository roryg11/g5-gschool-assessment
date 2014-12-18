

#need a program to read through text files and -- File.read
#store information based on the /
#text until / = title
# text at 2nd / = Author
# then start counting lines, exluding lines that have / without any text
# verses are in between solitary /
# Additionally each line starts with a capital letter
# cannot figure out how ruby reads texts files-- REGEX!!!!
#struggling now to figure out the right code to use with REGEX
# using Rubular.com to find out the proper regex to extract the title



poem = File.read('data/poem_01.txt')

#method that gives you the poem title
def title(poem)
  title = #poem =~ /from start of the line to the first return/
  title
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
  number_of_consecutive_returns = []
  poem.each do |lines|
    if lines ~= /$$/
      number_of_consecutive_returns.push(:cons_ret)
    end
  end
  number_of_consecutive_returns.length
end

#method that identifies the number of lines in the poem
def number_of_lines(poem)
  number_of_returns = []
  #put return into an array everytime a line ends
  poem.each do |line|
    if line ~= /$/
      number_of_returns.push(:return)
    end
  end
  number_of_returns.length
end

poems = {}

Dir.glob('data/*.rb').each do |poem|
  poems["#{author(poem)}"] = "#{title(poem)}"
  poems["#{author(poem)}"]["#{title(poem)}"] = {verse: number_of_verses(poem), lines: number_of_lines(poem)}
end
