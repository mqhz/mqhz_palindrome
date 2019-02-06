require "mqhz_palindrome/version"

module MqhzPalindrome
#Returns true for a palindrome, false otherwise.
    def palindrome?
      if processed_content.empty?
        false
      else
      processed_content == processed_content.reverse
      end
    end
    private
    #Returns content for palindrome testing.
    def processed_content
      self.to_s.scan(/[a-z]|\d/i).join.downcase
    end
  end

#Add palindrome functionality to the string class.
  class String
    include MqhzPalindrome
  end
#Add palindrome functionality to the integer class.
  class Integer
      include MqhzPalindrome
  end
