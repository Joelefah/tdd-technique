require "date"
class Person
    attr_accessor :dob, :first_name, :surname, :emails, :phone_numbers
	def initialize (fname, sname, dob)
		@dob = Date.parse(dob)
		#capatilize the first letter of string
		@first_name = fname.capitalize
		@surname = sname.capitalize
		@emails = []
		@phone_numbers = []
	end
	
	def full_name
		"#{first_name} #{surname}"
	end

	def add_email(emails)
		@emails << emails
	end

	def add_phone(phone_numbers)
		@phone_numbers << phone_numbers
	end

	def remove_email(index_no)
		emails.delete_at(index_no)
	end
end
