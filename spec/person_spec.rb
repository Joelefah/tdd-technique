require 'spec_helper'

describe "Person Class - entries in phonebook" do 
	it "should store and return personal information" do #name of unit test
		person = Person.new("joe", "bloggs", "21-09-1992")

		expect(person.dob.class).to be Date #
		expect(person.dob.to_s).to eq "1992-09-21" 
 		expect(person.first_name).to eq "Joe"
 		expect(person.surname).to eq "Bloggs"
 		expect(person.full_name).to eq "Joe Bloggs"
 	end

 	it "should store and return email information" do #name of unit test
		person = Person.new("joe", "bloggs", "21-09-1992")

		expect(person.emails).to eq [] #
		person.add_email "joe@foo.com" #
		person.add_email "joe.bloggs@work.com" #
		expect(person.emails).to eq ["joe@foo.com", "joe.bloggs@work.com"] #
	end

	it "should store and return phone numbers" do
		person = Person.new("joe", "bloggs", "21-09-1992")

		expect(person.phone_numbers).to eq []
		person.add_phone "07712345678"
		person.add_phone "02012345678"
		expect(person.phone_numbers).to eq ["07712345678", "02012345678"]
	end

	it "should remove emails" do
		person = Person.new("joe", "bloggs", "21-09-1992")

		person.add_email "joe@foo.com" #
		person.add_email "joe.bloggs@work.com"
		person.remove_email(0)
		expect(person.emails).to eq ["joe.bloggs@work.com"] 
	end
	
	it "should print personal details" do
	    person = Person.new("joe", "bloggs", "21-09-1992")

	    person.add_email "joe@foo.com"
	    person.add_phone "07712345678"
	    person.add_phone "02012345678"
	    expect(person.to_s).to eq "Joe Bloggs was born on 1992-09-21.\n Their email addresses are:\n[\"joe@foo.com\"].\n Their phone numbers are [\"07712345678\", \"02012345678\"]"
	end

	it "should list personal information on seperate lines" do
		person = Person.new("joe", "bloggs", "21-09-1992")

		person.add_email "joe@foo.com"
	    person.add_phone "02012345678"
		expect(person.print_details).to eq "Joe Bloggs\n ---------- \n Date of Birth: 21 September 1992 \n\n Email Addresses:\n - joe@foo.com \n\n Phone Numbers:\n 02012345678"
	end
end

describe "FamilyMember class that inherits from Person" do
	it "should display details of family member" do
		familymember = FamilyMember.new("joe", "bloggs", "21-09-1992", "brother")

		expect(familymember.dob.class).to be Date #
		expect(familymember.dob.to_s).to eq "1992-09-21" 
 		expect(familymember.first_name).to eq "Joe"
 		expect(familymember.surname).to eq "Bloggs"
 		expect(familymember.relationship).to eq "brother"
	end
end


 # => ["joe.bloggs@work.com"]
	#organises tests
