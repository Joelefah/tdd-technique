require "date"
class Person
  #creates getter and setter methods for user to
  #read and rewrite the value of each instance variable
    attr_accessor :dob, :first_name, :surname, :emails, :phone_numbers
    attr_reader :full_name
	def initialize (fname, sname, dob)
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

  #removes email by index no
	def remove_email(index_no)
		emails.delete_at(index_no)
	end

	def to_s
	    "#{@full_name} was born on #{@dob}.\n Their email addresses are:
#{@emails}.\n Their phone numbers are #{@phone_numbers}"
	end

	def print_details 			
	
		puts full_name 
	    full_name.length.times {print '-'}
	    puts "\nDate of Birth: " + dob.strftime('%m %B %Y')+"\n"
	    puts "\nEmail Addresses: "
	    emails.each do |address| puts "- " + address + "\n"
	    end
	    puts "\nPhone Numbers: "
	    phone_numbers.each do |number| puts "- " + number + "\n"
	    end
	    puts "\n"

		#puts @full_name
		#10.times {print '-'}
		#puts "\nDate of Birth: #{@dob.strftime('%d %B %Y')}"
		#puts "\nEmail Addresses:\n- #{emails.join(" \n- ")} \n\nPhone Numbers:\n- #{phone_numbers.join(" \n- ")}"
	
      # "#{full_name}\n ---------- \n Date of Birth: #{@dob.strftime('%d %B %Y')} \n\n Email Addresses:\n - #{emails.join(" \n- ")} \n\n Phone Numbers:\n #{phone_numbers.join}"
    end
end

class FamilyMember < Person
	attr_accessor :relationship
	def initialize (*args, relationship)
		@relationship = relationship
		#calls constructor from the parent class "Person"
		super(*args)
	end
end

class AddressBook 
	attr_accessor :entries
	def initialize   
		@entries = [] 
	end

	def add(person)
		@entries << person
	end

	def list
    puts "Address Book"
    "Address Book".length.times {|i| print '-'}
    entries.each_with_index {|details, i| print "\nEntry #{i+1}: #{details}"}
    puts "\n"
	end
end
