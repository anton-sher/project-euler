$dignames=%w{one two three four five six seven eight nine}

$tennames=%w{ten twenty thirty forty fifty sixty seventy eighty ninety}

$teennames=%w{eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen}

words = []

def first_hundred list, prefix
  $dignames.each{|name| 
    list << prefix + name
  }
  list << prefix + 'ten'
  
  $teennames.each{
    |n| list << prefix + n
  }
  
  $tennames[1..-1].each{|tenname| 
    list << prefix + tenname
    $dignames.each{|digname|
      list << prefix + tenname + digname
    }
  }
end

first_hundred words, ''

$dignames.each{|digname|
  words << digname + 'hundred'
  first_hundred words, digname + 'hundredand'
}

words << 'onethousand'

print words
puts

letters = words.map(&:length).reduce{|sum, l| sum += l}
puts letters

puts words[341]
puts words[341].length
puts words[114]
puts words[114].length

