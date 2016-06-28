require_relative 'search_time_zone'
require_relative 'time'


search = TimeZone.new
showtime = ShowTime.new


search.city = gets.chomp

print "Часовой пояс: "
puts showtime.zone = search.Search
print "Время на часавом поясе: " 
puts time1 = showtime.show_time	
print "Настоящее время: " 
puts time2 =Time.new
print "Разница между часовыми поясами: "

if time2.gmt_offset < 0
 puts (time1.gmt_offset + time2.gmt_offset)/3600 
else
 puts (time2.gmt_offset - time1.gmt_offset)/3600 
end

