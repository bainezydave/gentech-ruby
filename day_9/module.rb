# 1. Used for name spacing.
# 2. Useed to drop a piece of functionality into different classes.
# 3. Used to import code from another file.

module CalendarDate
    class Date
        def self.show_date
            puts "Print out current date"
        end
    end
end

module MeetingDate
    class Date
        def self.show_date
            puts "Print out meeting date"
        end
    end
end

MeetingDate::Date.show_date
CalendarDate::Date.show_date


