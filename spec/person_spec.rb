require 'spec_helper'

describe "Person Class - entriies in phonebook" do 
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
      expect(person.to_s).to eq "Joe Bloggs was born on 1990-01-01.\n Their email addresses are:
[\"joe@foo.com\"].\n Their phone numbers are [\"07712345678\", \"02012345678\"]"
  end
end

 # => ["joe.bloggs@work.com"]
	#organises tests
