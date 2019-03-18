class Employee
    def initialize(name,title,salary,boss)
        attr_reader :salary
        @name = name
        @title = title
        @salary = salary
        @boss = boss

    end

    def bonus(multiplier)
        bonus = @salary * multiplier
    end

    def employee_salaries # base case
       return @salary 
    end

end

class Manager < Employee 
    def initialize(employees)
        super
        @employees = employees
    end

    def bonus(multiplier)
        salaries = @salary + employee_salaries
        @employees.each do |employee|
          if employee.is_a?(Manager)
            salaries += employee.employee_salaries 
          else

          end
        end
    end

    def employee_salaries #recursive with base case handled by polymorphism
        all_salaries = @salary
        @employees.each do |employee|
            all_salaries += employee.employee_salaries
        end
        all_salaries
    end

    
end

