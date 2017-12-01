# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
  attr_accessor :email_string

  def initialize(email_string)
    @email_string = email_string
  end

  def parse
    emails = @email_string.split(/[\s,]+/)
    emails.uniq
  end

end

"john@doe.com, person@somewhere.org moby@mobyworld.org,moby@mobyuniverse.org   mobyrules@mobykingdom.org, , "
