# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
# 1. Accept a string containing email addresses separated by commas or spaces
# 2. Parse the string using regex
# 2a. Check that the email addresses are unique
# 2b. Instantiate each unique address
# 4. Return the list as an array


class EmailParser
#  attr_accessor :email

  def save
    @@all << self
  end

  def all
    @@all
  end
  
  def self.parse(email_string)
    emails = email_string.split([,\s?])
    emails.each do | email | 
      !self.all.include?(email) { email.save }
    end
  end

end

