# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').


class EmailParser
  attr_accessor :email_string
#  @@all = []

  def initialize(email_string)
    @email_string = email_string
  end

  def self.save
    @@all << self
  end

  def self.all
    @@all
  end

  def parse
    emails = @email_string.split(/[\s,]+/)
    emails.each do | email |
      !self.class.all.include?(email) { email.save }
    end
  end

end
