

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

#should we put this in a class--

class Poem
  attr_reader :poem

  def initialize(poem)
    @poem = poem
  end

  def poem_to_array
    @poem.lines
  end

  def title
    poem_array = @poem.lines
    title = poem_array[0].chomp
  end

  def author
    poem_array = @poem.lines
    author = poem_array[1].chomp
  end

  #method that gives you the number of verses in the poem
  def number_of_verses
    verse_array = []
    @poem.each_line do |line|
      if line =~ /\n/ && line !~ /a-zA-Z/
        verse_array.push("verse")
      end
    end
    verse_array.length
  end

  #method that identifies the number of lines in the poem
  def number_of_lines
    line_array = []
    @poem.each_line do |line|
      line_array << line.count
    end
    line_array.length
  end
end


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

#do this for poem objects?

Dir.glob('data/*.rb').each do |poem|
  poems["#{author(poem)}"] = "#{title(poem)}"
  poems["#{author(poem)}"]["#{title(poem)}"] = {verse: number_of_verses(poem), lines: number_of_lines(poem)}
end
