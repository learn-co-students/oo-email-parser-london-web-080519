# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser

    attr_accessor :email

    @@all_emails = []

    def initialize(email)
        @email = email
    end

    def parse
        delimiters = [' ', ', ']
        @email.split(Regexp.union(delimiters)).uniq
    end

end