current_time = Time.now()
current_hour = Time.new.hour()

if current_hour.between?(4, 12)
    puts "Good Morning! The time is now #{current_time}"
elsif current_hour.between?(12, 17)
    puts "Good Afternoon! The time is now #{current_time}"
elsif current_hour.between?(17, 20)
    puts "Good Evening! The time is now #{current_time}"
else
    puts "Good Night! The time is now #{current_time}"
end