# 8/3/16 Wednesday
# 8/7/16 Sunday
# 8/31/16 Wednesday
# 9/4/16 Sunday

Job.destroy_all
JobSkill.destroy_all
Skill.destroy_all
User.destroy_all
Networking.destroy_all

# KAREN, ALEX/JOB SEED ######################################
user = User.create(
  first_name: "Karen",
  last_name: "Liu",
  email: "karen@gmail.com",
  password: "password",
  phone_number: "630-554-3565",
  address: "34 West Way, Honolulu, HI, 39575",
  prospective_address: "Chicago, IL"
)
3.times do 
  job = Job.create(
    user_id: user.id,
    company: Faker::Company.name,
    position: Faker::Company.profession,
    source: "Monster",
    status: "not_yet_applied",
    found_date: DateTime.now,
    listing_url: Faker::Internet.url('monster.com'),
    address: Faker::Address.street_address,
    city: Faker::Address.city,
    state: Faker::Address.state_abbr,
    zip_code: Faker::Address.zip_code,
    phone_number: Faker::PhoneNumber.phone_number,
    company_website: Faker::Internet.url('company.com'),
    salary: 90000, 
    rating: rand(1..5),
    notes: Faker::Lorem.paragraph
  )
end

3.times do 
  job = Job.create(
    user_id: user.id,
    company: Faker::Company.name,
    position: Faker::Company.profession,
    source: "Monster",
    status: "applying_to",
    found_date: DateTime.now,
    listing_url: Faker::Internet.url('monster.com'),
    address: Faker::Address.street_address,
    city: Faker::Address.city,
    state: Faker::Address.state_abbr,
    zip_code: Faker::Address.zip_code,
    phone_number: Faker::PhoneNumber.phone_number,
    company_website: Faker::Internet.url('company.com'),
    salary: 90000, 
    rating: rand(1..5),
    notes: Faker::Lorem.paragraph
  )
end

3.times do 
  job = Job.create(
    user_id: user.id,
    company: Faker::Company.name,
    position: Faker::Company.profession,
    source: "Monster",
    status: "applied_to",
    found_date: DateTime.now,
    listing_url: Faker::Internet.url('monster.com'),
    address: Faker::Address.street_address,
    city: Faker::Address.city,
    state: Faker::Address.state_abbr,
    zip_code: Faker::Address.zip_code,
    phone_number: Faker::PhoneNumber.phone_number,
    company_website: Faker::Internet.url('company.com'),
    salary: 90000, 
    rating: rand(1..5),
    notes: Faker::Lorem.paragraph
  )
end

3.times do 
  job = Job.create(
    user_id: user.id,
    company: Faker::Company.name,
    position: Faker::Company.profession,
    source: "Monster",
    status: "interview_set_up",
    found_date: DateTime.now,
    listing_url: Faker::Internet.url('monster.com'),
    address: Faker::Address.street_address,
    city: Faker::Address.city,
    state: Faker::Address.state_abbr,
    zip_code: Faker::Address.zip_code,
    phone_number: Faker::PhoneNumber.phone_number,
    company_website: Faker::Internet.url('company.com'),
    salary: 90000, 
    rating: rand(1..5),
    notes: Faker::Lorem.paragraph
  )
end

3.times do 
  job = Job.create(
    user_id: user.id,
    company: Faker::Company.name,
    position: Faker::Company.profession,
    source: "Monster",
    status: "interviewed_with",
    found_date: DateTime.now,
    listing_url: Faker::Internet.url('monster.com'),
    address: Faker::Address.street_address,
    city: Faker::Address.city,
    state: Faker::Address.state_abbr,
    zip_code: Faker::Address.zip_code,
    phone_number: Faker::PhoneNumber.phone_number,
    company_website: Faker::Internet.url('company.com'),
    salary: 90000, 
    rating: rand(1..5),
    notes: Faker::Lorem.paragraph
  )
end

3.times do 
  job = Job.create(
    user_id: user.id,
    company: Faker::Company.name,
    position: Faker::Company.profession,
    source: "Monster",
    status: "job_offered",
    found_date: DateTime.now,
    listing_url: Faker::Internet.url('monster.com'),
    address: Faker::Address.street_address,
    city: Faker::Address.city,
    state: Faker::Address.state_abbr,
    zip_code: Faker::Address.zip_code,
    phone_number: Faker::PhoneNumber.phone_number,
    company_website: Faker::Internet.url('company.com'),
    salary: 90000, 
    rating: rand(1..5),
    notes: Faker::Lorem.paragraph
  )
end

user = User.create(
  first_name: "Alex",
  last_name: "Liu",
  email: "Alex@gmail.com",
  password: "password",
  phone_number: "650-496-3055",
  address: "78 South Way, Burly, TN, 86213",
  prospective_address: "Chicago, IL"
)
3.times do 
  job = Job.create(
    user_id: user.id,
    company: Faker::Company.name,
    position: Faker::Company.profession,
    source: "Monster",
    status: "not_yet_applied",
    found_date: DateTime.now,
    listing_url: Faker::Internet.url('monster.com'),
    address: Faker::Address.street_address,
    city: Faker::Address.city,
    state: Faker::Address.state_abbr,
    zip_code: Faker::Address.zip_code,
    phone_number: Faker::PhoneNumber.phone_number,
    company_website: Faker::Internet.url('company.com'),
    salary: 90000, 
    rating: rand(1..5),
    notes: Faker::Lorem.paragraph
  )
end

3.times do 
  job = Job.create(
    user_id: user.id,
    company: Faker::Company.name,
    position: Faker::Company.profession,
    source: "Monster",
    status: "applying_to",
    found_date: DateTime.now,
    listing_url: Faker::Internet.url('monster.com'),
    address: Faker::Address.street_address,
    city: Faker::Address.city,
    state: Faker::Address.state_abbr,
    zip_code: Faker::Address.zip_code,
    phone_number: Faker::PhoneNumber.phone_number,
    company_website: Faker::Internet.url('company.com'),
    salary: 90000, 
    rating: rand(1..5),
    notes: Faker::Lorem.paragraph
  )
end

3.times do 
  job = Job.create(
    user_id: user.id,
    company: Faker::Company.name,
    position: Faker::Company.profession,
    source: "Monster",
    status: "applied_to",
    found_date: DateTime.now,
    listing_url: Faker::Internet.url('monster.com'),
    address: Faker::Address.street_address,
    city: Faker::Address.city,
    state: Faker::Address.state_abbr,
    zip_code: Faker::Address.zip_code,
    phone_number: Faker::PhoneNumber.phone_number,
    company_website: Faker::Internet.url('company.com'),
    salary: 90000, 
    rating: rand(1..5),
    notes: Faker::Lorem.paragraph
  )
end

3.times do 
  job = Job.create(
    user_id: user.id,
    company: Faker::Company.name,
    position: Faker::Company.profession,
    source: "Monster",
    status: "interview_set_up",
    found_date: DateTime.now,
    listing_url: Faker::Internet.url('monster.com'),
    address: Faker::Address.street_address,
    city: Faker::Address.city,
    state: Faker::Address.state_abbr,
    zip_code: Faker::Address.zip_code,
    phone_number: Faker::PhoneNumber.phone_number,
    company_website: Faker::Internet.url('company.com'),
    salary: 90000, 
    rating: rand(1..5),
    notes: Faker::Lorem.paragraph
  )
end

3.times do 
  job = Job.create(
    user_id: user.id,
    company: Faker::Company.name,
    position: Faker::Company.profession,
    source: "Monster",
    status: "interviewed_with",
    found_date: DateTime.now,
    listing_url: Faker::Internet.url('monster.com'),
    address: Faker::Address.street_address,
    city: Faker::Address.city,
    state: Faker::Address.state_abbr,
    zip_code: Faker::Address.zip_code,
    phone_number: Faker::PhoneNumber.phone_number,
    company_website: Faker::Internet.url('company.com'),
    salary: 90000, 
    rating: rand(1..5),
    notes: Faker::Lorem.paragraph
  )
end

3.times do 
  job = Job.create(
    user_id: user.id,
    company: Faker::Company.name,
    position: Faker::Company.profession,
    source: "Monster",
    status: "job_offered",
    found_date: DateTime.now,
    listing_url: Faker::Internet.url('monster.com'),
    address: Faker::Address.street_address,
    city: Faker::Address.city,
    state: Faker::Address.state_abbr,
    zip_code: Faker::Address.zip_code,
    phone_number: Faker::PhoneNumber.phone_number,
    company_website: Faker::Internet.url('company.com'),
    salary: 90000, 
    rating: rand(1..5),
    notes: Faker::Lorem.paragraph
  )
end

# SKILLS SEED ######################################


skills = ["JavaScript", "Ruby", "C++", "Dancing", "Scala", "iOS", "Android", "Excel", "Word", "Java", "SQL", "C#", "Python", "PHP", "HTML", "CSS", "OSX", "Swift"]
skills.each do |each_skill|
  skill = Skill.create(
    name: each_skill
  )
end

# JOB_SKILLS SEED ######################################

jobs = Job.all 
skills = Skill.all
user = User.first
skill = Skill.first

jobs.each do |job|
  # skills.each do |skill|
    JobSkill.create(
      skill_id: skill.id,
      job_id: job.id,
      user_id: user.id
    )
  # end
end

# NETWORKINGS SEED ######################################

jobs = Job.all

jobs.each do |job|
  2.times do
    name = Faker::Name.first_name
    Networking.create(
      first_name: name,
      last_name: Faker::Name.last_name,
      user_id: job.user.id,
      date_contacted: DateTime.now,
      email: "#{name}@gmail.com",
      job_id: job.id,
      emailed: true,
      phoned: false,
      letter_sent: false,
      notes: Faker::Lorem.paragraph
    )
  end
end



puts 'Done!'



# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
