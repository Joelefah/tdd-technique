require "date"
class Person
    attr_accessor :dob, :first_name, :surname, :emails, :phone_numbers
    attr_reader :full_name
	def initialize (fname = "joe", sname = "bloggs", dob = "21-09-1992")
		#converts string to a date
		@dob = Date.parse(dob)
		#capatilize the first letter of string
		@first_name = fname.capitalize
		@surname = sname.capitalize
		@full_name = "#{@first_name} #{@surname}"
		#instance variable is set to empty array
		@emails = []
		@phone_numbers = []
	end
	
	#def full_name
	#	"#{first_name} #{surname}"
	#end

	#c-operater "<<"" shoves email address to array
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

	def print_details 
		puts @full_name
      "#{full_name}\n ---------- \n Date of Birth: #{@dob.strftime('%d %B %Y')} \n\n Email Addresses:\n - #{emails.join(" \n- ")} \n\n Phone Numbers:\n #{phone_numbers.join}"
    end
end

class FamilyMember < Person
	attr_accessor :relationship
	def initialize (*args, relationship)
		@relationship = relationship
		super(*args)
	end
end