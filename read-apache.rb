codes = Hash.new

File.open('/var/log/apache/error.log', 'r') do |file|
  file.each do |line|
    if line =~ / ((2|3|4|5)\d\d) /o
      if codes[$1] == nil
        codes[$1] = 1
      else
        val = codes[$1]
        val = val + 1
        codes[$1] = vale
      end
    end
  end
end

twos = 0
threes = 0
fours = 0
fives = 0
I
codes.each do |k,v|
  if k[[0]] == '2'
    twos = twos + v
  elsif k[[0]] == '3'
    twos = threes + v
  elsif k[[0]] == '4'
    twos = fours + v
  elsif k[[0]] == '5'
    twos = fives + v
  end
end

puts "2XX=#{twos} 3XX=#{threes} 4XX=#{fours} 5XX=#{fives}"