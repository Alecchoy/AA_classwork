
require_relative 'employee'

class Manager < Employee

    def initialize(name, title,salary,boss)
        super(name, title, salary, boss)
        @employees = []
     
    end

    def bonus(multiplier)
        total_salary = 0
        
        @employees.each do |employee|
            total_salary += employee.salary
        end

        return total_salary * multiplier
    end

    def subordinate(employee)
         @employees << employee
    end


end

# class CEO < Manager
#     def wage
#       1_000_000
#     end
# end
ned = Manager.new("Ned", "Founder", 1000000, )


byran.employees << shawna

ned.bonus(5) # => 500_000
darren.bonus(4) # => 88_000
david.bonus(3) # => 30_000