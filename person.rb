require "date"
class Person
    attr_accessor :dob, :first_name, :surname, :emails, :phone_numbers
	def initialize (fname, sname, dob)
		#converts string to a date
		@dob = Date.parse(dob)
		#capatilize the first letter of string
		@first_name = fname.capitalize
		@surname = sname.capitalize
		
		#instance variable is set to empty array
		@emails = []
		@phone_numbers = []
	end
	
	def full_name
		"#{first_name} #{surname}"
	end

	#c-operater "<<"" pushs email address to array
	def add_email(emails)
		@emails << emails
	end

	def add_phone(phone_numbers)
		@phone_numbers << phone_numbers
	end

	def remove_email(index_no)
		emails.delete_at(index_no)
	end

	def to_s
		"Joe Bloggs was born on 1990-01-01.\n Their email addresses are:
[\"joe@foo.com\"].\n Their phone numbers are [\"07712345678\", \"02012345678\"]"
	end
end
