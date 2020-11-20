require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
s1 = Startup.new("Keyboard Company", "Emma Fewer", "www.keyboards.com")
s2 = Startup.new("Coffee Time", "Rachel Cross", "coffeetime.com")
s3 = Startup.new("Tea Time", "Sin Wildy", "teatime.com")

vc1 = VentureCapitalist.new("Emma 2", 88888)
vc2 = VentureCapitalist.new("Rachel 2", 1000000009)
vc3 = VentureCapitalist.new("Sin 2", 999)


fr1 = FundingRound.new(s1, vc1, "Angel", 1000.00)
fr2 = FundingRound.new(s2, vc2, "Pre-Seed", 10330.00)
fr3 = FundingRound.new(s3, vc3 , "Series A", 1000000000.00)
fr4 = FundingRound.new(s1, vc1, "Series B", 250000.00)
fr5 = FundingRound.new(s1, vc2, "Series B", 999999.00)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line