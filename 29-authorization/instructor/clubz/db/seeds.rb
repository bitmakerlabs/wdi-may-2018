Role.destroy_all
User.destroy_all
Club.destroy_all

Role.create(name: "gangster", access_clubs: false)
Role.create(name: "droid", access_clubs: false)
Role.create(name: "wizard", access_clubs: true)
Role.create(name: "hobbit", access_clubs: true)

users = [
  {name: "frodo", password: "1234", password_confirmation: "1234", role_id: Role.find_by(name: "hobbit").id},
  {name: "c3p0", password: "1234", password_confirmation: "1234", role_id: Role.find_by(name: "droid").id},
  {name: "hermione", password: "1234", password_confirmation: "1234", role_id: Role.find_by(name: "wizard").id},
  {name: "tony", password: "1234", password_confirmation: "1234", role_id: Role.find_by(name: "gangster").id},
]

users.each do |user|
  User.create(user)
end

clubs = [
  {name: "The Green Dragon", description: "The place where the coolest vertically challenged citizens of Middle-Earth get loud and tell tall tales", user: User.last},
  {name: "Cantina at Mos Eisley", description: "If you want to prove you can hang with scum and villainy's greatest hits, this is your joint", user: User.last},
  {name: "The Hog's Head", description: "Aspiring wizards drink butterbeer here and host mind-numbing after parties", user: User.last},
  {name: "The Babylon Club", description: "Say hello to your little friend, or other friends at this south Florida staple", user: User.last}
]

clubs.each do |club|
  Club.create(club)
end
