class StringRepeater
    def initialize(kernel)
        @kernel = kernel
    end
        
    def run
        @kernel.puts "Hello. I will repeat a string many times."
        @kernel.puts "Please enter a string"
        iteration_text = @kernel.gets.chomp
        @kernel.puts "Please enter a number of repeats"
        iteration_number = @kernel.gets.chomp
        @kernel.puts "Here is your result: #{iteration_text * iteration_number.to_i}"
    end
end

#string_repeater = StringRepeater.new(Kernel)
#string_repeater.run