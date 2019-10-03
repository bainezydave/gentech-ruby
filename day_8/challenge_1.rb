class Employee
    attr_accessor :name, :salary

    @count = 0
    @@employee_info = []

    class << self

        def add_employee
            @count += 1
        end

        def employee_info
            @@employee_info.each{|i| puts "The salary of #{i.name} is #{i.salary}"}
        end

        def count
            puts "The number of employees are #{@count}"
        end
    end

    def initialize(name, salary)
        self.class.add_employee
        @name = name
        @salary = salary
        @@employee_info.push(self)
    end
end

system "clear"

loop do
    puts "Enter the employee's name."
    name = gets.chomp.to_s

    puts "Enter the employee's salary."
    salary = sprintf("$%2.2f", gets.chomp.to_i)

    Employee.new(name, salary)

    puts "Would you like to enter another employee? (Yes or No)"
    answer = gets.chomp.to_s

    break if answer.include? "n"
end

system "clear"
puts Employee.employee_info
puts Employee.count



