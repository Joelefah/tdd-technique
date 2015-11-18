require "date"
class Person
    attr_accessor :dob, :first_name, :surname, :emails
	def initialize (fname, sname, dob)
		@dob = Date.parse(dob)
		#capatilize the first letter of string
		@first_name = fname.capitalize
		@surname = sname.capitalize
		@emails = []
	end
	
	def full_name
		"#{first_name} #{surname}"
	end

	def add_email(emails)
		@emails << emails
		
	end

end
