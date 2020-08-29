require 'pry'

class String

  #returns true if the string that you are calling this method on ends in a period.
  def sentence?
    self.end_with?(".")
  end

  #returns true if the string that you are calling this method on ends in a question mark.
  def question?
    self.end_with?("?")
  end

  #returns true if the string that you are calling this method on ends in an exclamation mark
  def exclamation?
    self.end_with?("!")
  end

  #returns the number of sentences in a string, the + is for an empty array
  def count_sentences
    sentence_split = self.split(/[.?!]+/)
    sentence_split.count
  end
end