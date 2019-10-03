# #  The CEO of the company wants to get an overview of all the employees in her
# #  company their respective salaries and total number of employees currently
# #  employed. Write a ruby program to display the data that CEO needs
# #  Hint: Create a Class with methods to keep track of the employee count and
# #  display employee details.

# # Try : Implement this just using methods and then implement the same as
# # classes and objects . List out which one worked best and why.

# # Sample Test Case
# # Name = Sarah ; Salary = 20,000
# # Name = Ben ; Salary = 19,000
# # Name = John ; Salary = 19,500

# class Employee
#     attr_accessor :name, :salary

#     @@count = 0
#     @@employee_deets = []

#     def self.count
#         @@count
#     end

#     def self.employee_deets
#         @@employee_deets.each {|elem| puts "The salary of #{elem.name} is #{elem.salary}"}
#     end

#     def initialize(name, salary)
#         @@count += 1
#         @name = name
#         @salary = salary
#         @@employee_deets.push(self)
#     end

#     def get_employee_deets
#         puts "The salary of #{@name} is #{@salary}"
#     end
# end

# employee1 = Employee.new("Sarah", "$20,000")
# employee2 = Employee.new("Ben",   "$19,000")
# employee3 = Employee.new("John",  "$19,500")

# puts Employee.count
# puts Employee.employee_deets



class Employee
    attr_reader :name, :salary

    @count = 0

    class << self

        def count
            puts @count
        end

        def add_employee
            @count =+ 1
        end

    end

    def initialize(name, salary)
        self.class.add_employee
        @name = name
        @salary = salary
    end
end

employee1 = Employee.new("Bob", "$20,000")
puts employee1.name
puts employee1.salary
puts Employee.count