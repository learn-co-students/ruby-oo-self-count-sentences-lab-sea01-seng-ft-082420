require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      true
    elsif !self.end_with?(".")
      false
    end
  end

  def question?
    if self.end_with?("?")
      true
    elsif !self.end_with?("?")
      false
    end
  end

  def exclamation?
    if self.end_with?("!")
      true
    elsif !self.end_with?("!")
      false
    end
  end

  def count_sentences 
    count = 0
    sent_split = self.split(/[.?!]/)
    sent_split_full = sent_split.reject(&:empty?)
    # binding.pry
    while count < sent_split_full.size
      count += 1
    end
    count
  end
end