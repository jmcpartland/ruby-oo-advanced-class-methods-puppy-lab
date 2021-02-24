require "pry"
class Dog
    attr_accessor :name
    
    @@all = []

    def initialize(name)
        @name = name
        save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end

    def self.print_all
        puts @@all.map{ |dog| dog.name }
    end

    def self.clear_all
        @@all.clear
    end


#     pluto = Dog.new("pluto")
#     fido = Dog.new("fido")
#     maddy = Dog.new("maddy")

# binding.pry
end