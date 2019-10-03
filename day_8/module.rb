
module CalendarDate
    class Date
        class << self
            def show_date
                puts "Prints out current date"
            end
        end
    end
end


module MeetingDate
    class Date
        class << self
            def show_date
                puts "Print out meeting date"
            end
        end
    end
end

# Date.show_date
# Date.current_date

CalendarDate::Date.show_date
MeetingDate::Date.show_date