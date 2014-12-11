=begin
def whatDay(day, month, year)
    days = ["mo","tu","wd","th","fr","st","su"]
    a = (14 - month) / 12
    y = year - a
    m = month+12 * a-2
    result = ((7000 + (day + y + y/4 - y/100 + y/400 + (31*m) / 12)) % 7) - 1
days[result]
end
a=0
(1901..2000).each do |year|
    (1..12).each do |month|
        a+=1 if whatDay(1, month, year)=="su"
    end
end
p a
=end
a=0
(1901..2000).each do |year|
    (1..12).each {|month| a+=1 if Time.new(year, month, 1).sunday?}
end
p a
