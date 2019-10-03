require './file.rb'

class Date
    # include requires object to access methods.
    # extend treats the method as a class
    extend CalendarDate
    def self.meeting_date
        puts "Prints meeting date."
    end
end

Date.meeting_date
Date.current_date
# created new object for include
# Date.new.current_date