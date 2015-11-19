require "date"
class Person
    attr_accessor :dob, :first_name, :surname, :full_name, :emails, :phone_numbers
	def initialize (fname, sname, dob)
		#converts string to a date
		@dob = Date.parse(dob)
		#capatilize the first letter of string
		@first_name = fname.capitalize
		@surname = sname.capitalize
		@full_name = "#{first_name} #{surname}"
		#instance variable is set to empty array
		@emails = []
		@phone_numbers = []
	end
	
	#def full_name
	#	"#{first_name} #{surname}"
	#end

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
		"#{@full_name} was born on #{@dob}.\n Their email addresses are:
#{@emails}.\n Their phone numbers are #{@phone_numbers}"
	end
end
