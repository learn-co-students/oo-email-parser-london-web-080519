# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').



class EmailAddressParser
    def initialize(email_list)
        @email_list = email_list
        parse
    end

    attr_accessor :email_list

    def parse
        email_array = email_list.split(/[\s,]+/).flatten.uniq
    end
end