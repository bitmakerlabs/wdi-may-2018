require_relative 'contact'

clark = Contact.new('Clark', 'Kent', 'clark@dailyplanet.com', 'Runs into the phone booth a lot')
diana = Contact.new('Diana', 'Prince', 'diana@amazon.com')
bruce = Contact.new('Bruce', 'Wayne', 'bruce@wayneenterprises.com', 'Kind of a dark guy...')

clark.save
diana.save
bruce.save

dave1 = Contact.create('Dave', 'Wong', '')
dave2 = Contact.create('Dave', 'Wong', '')
dave3 = Contact.create('Dave', 'Wong', '')
dave4 = Contact.create('Dave', 'Wong', '')

Contact.all.each do |contact|
  puts contact.inspect
end

#puts 'Starting Sleep'
#sleep(30)
#puts 'Finished Sleep'
