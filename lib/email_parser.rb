# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'
class EmailAddressParser
    # attrepute emails
    attr_accessor :email
    # all emails
    @@all = []

    # initialize with emails 
    def initialize(email)
        @email = email
        @@all << self
    end
    # instance method "parse"
    def parse
        # split the array
        # for each, split by comma
        # flat arrays 
        # choose the uniqe one
        self.email.split.map{|address| address.split(',')}.flatten.uniq 
    end
    
end


