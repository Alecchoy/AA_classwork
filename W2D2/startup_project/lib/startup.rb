require "employee"

class Startup
    attr_reader :name,  :funding, :salaries, :employees
    def initialize(name, funding, salaries)
        @name = name
        @funding = funding
        @salaries = salaries
        @employees = []
    end

    def valid_title?(string)
        salaries.keys.include?(string)
    end

    def >(other_startup)

        if self.funding > other_startup.funding
            return true
        else
            return false
        end
    end

    def hire(employee_name, title)
        if salaries.keys.include?(title)
            @employees << employee_name
        end
    end

end
