require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


cult1 = Cult.new(name:"the boos", location:"atlanta", founding_year: 1985, slogan:"bye ok")
cult2 = Cult.new(name: "your girlz", location:"atlanta", founding_year: 2001, slogan: "you already know")
cult3 = Cult.new(name: "goon squad", location:"boston", founding_year: 2017, slogan: "whateva")


f1 = Follower.new(name: "batty g", age: 45, life_motto: "can't stop won't stop")
f2 = Follower.new(name: "chris kattan", age: 57, life_motto: "people say i'm delusional")
f3 = Follower.new(name: "mia mia", age: 18, life_motto: "my parents just don't understand")

bo1 = BloodOath.new(follower: f1, cult: cult2, date:'2016-10-31')
bo2 = BloodOath.new(follower: f2, date: '2017-02-04', cult: cult2)
bo3 = BloodOath.new(date: '2018-01-01', follower: f3, cult: cult3)

cult1.recruit_follower(f1)
cult1.recruit_follower(f2)
cult3.recruit_follower(f1)



# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
