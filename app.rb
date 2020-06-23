require 'pry'

class Company
  attr_accessor :name, :size

  def initialize(name, size)
    @name = name
    @size = size
  end
end

companies = [
    Company.new('Alpha', 30),
    Company.new('Beta', 300),
    Company.new('Delta', 3000)
]

### Your code below this

def company_list(array)
    array.each do |company|
        puts "#{company.name} - #{company.size}"
        # binding.pry
    end
end

def total_size(array)
    array.reduce(0) do |sum, company|
        sum + company.size
    end
end

def filter_size(array,min_size)
    array.find_all do |company|
        # binding.pry
        company.size > min_size
    end
end

def find_company(array,name)
    array.find do |company|
        # binding.pry
        company.name == name.to_s
    end
end

def find_largest(array)
    array.max_by do |company|
        company.size
        # binding.pry
    end
end

def sort_descending(array)
    array.sort do |company|
        # binding.pry
        company.size 
    end
end

company_list(companies)
p '-'
p total_size(companies)
p '-'
p filter_size(companies,100)
p '-'
p find_company(companies,'Beta')
p '-'
p find_largest(companies)
p '-'
p sort_descending(companies)
# binding.pry
