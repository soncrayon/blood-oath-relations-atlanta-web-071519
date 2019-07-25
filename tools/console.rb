require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


cult1 = Cult.new("the boos", "atlanta", 1985, "bye trick")
cult2 = Cult.new("your girlz", "los angeles", 2001, "you already know")
cult3 = Cult.new("goon squad", "boston", 2017, "whateva")


f1 = Follower.new("batty g", 45, "can't stop won't stop")
f2 = Follower.new("chris kattan", 57, "people say i'm delusional")
f3 = Follower.new("mia mia", 18, "my parents just don't understand")

bo1 = BloodOath.new('2016-10-31')
bo2 = BloodOath.new('2017-02-04')
bo3 = BloodOath.new('2018-01-01')

cult1.recruit_follower(f1)
cult1.recruit_follower(f2)
cult1.recruit_follower(f3)

p f1.my_cults_slogans

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
