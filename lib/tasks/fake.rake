
task :fake => :environment do
    800.times do |n|
        a = Account.new
        a.name =  Faker::Company.name + " " + Faker::Company.suffix
        a.email =  Faker::Internet.email 
        a.city = Faker::Address.city 
        a.zipcode  = Faker::Address.zip_code
        a.state = Faker::Address.state_abbr
        a.about =  Faker::Company.catch_phrase
        a.type = 'Customer'
        a.employees = (rand * 90).to_i

        a.save
    end
end