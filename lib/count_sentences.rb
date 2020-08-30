require 'pry'

class String
  # attr_reader :string

  # def initialize(string)
  #   @string = string
  # end
  sstring= []

  def sentence?
    if self.end_with? (".")
      true
    else
      false
    end
  end

  def question?
    if self.end_with? ("?")
      true
    else
      false
    end
  end

  def exclamation?
    if self.end_with? ("!")
      true
    else
      false
    end
  end

  def count_sentences
    sstring= self.split
    i = 0
    if self != ''
      sstring.each do |key|
        if key.sentence? or key.question? or key.exclamation?
          i += 1
        end
      end
      return i
    else
      return 0
    end
  end
end

# String
#   #sentence?
#     returns true if the string that you are calling this method on ends in a period. (FAILED - 1)
#     returns false if the string that you are calling this method on does NOT end in a period. (FAILED - 2)
#   #question?
#     returns true if the string that you are calling this method on ends in a question mark. (FAILED - 3)
#     returns false if the string that you are calling this method on does NOT end in question mark. (FAILED - 4)
#   #exclamation?
#     returns true if the string that you are calling this method on ends in an exclamation mark (FAILED - 5)
#     returns false if the string that you are calling this method on does NOT end in a exclamation mark. (FAILED - 6)
#   #count_sentences
#     returns the number of sentences in a string (FAILED - 7)
#     returns zero if there are no sentences in a string (FAILED - 8)
#     returns the number of sentences in a complex string (FAILED - 9)