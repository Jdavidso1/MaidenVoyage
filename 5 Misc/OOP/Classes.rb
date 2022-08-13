class Pizza # Creating the class "Pizza", which must be capitalized (because it's a class, and this is Ruby!)
    attr_accessor :crust # Setting up our variables - these will be individualized in "instances" of the class (see below)
    attr_accessor :size  # Each of these is basically a "blueprint" for a variable we'll be using later.
    attr_accessor :sauce
    attr_accessor :toppings

    # You can also put functions in your classes, like so...
    def set_crust crust_type # This defines (aka def!) the function name of "set_crust", which applies to variable "crust_type"
        if crust_type == "regular" || crust_type == "stuffed" || crust_type == "none"
            @crust = crust_type # The @ symbol is an "instance variable" and tells Ruby that it needs to create it for the WHOLE class, not just for the "if" statement, which would otherwise happen. When we talk about "scope", this is a part of it - this makes the variable be available outside of the scope of this IF statement.
        else
            @crust = "regular" # This says that if they didn't pick one of the crust types above, it will default to regular crust

            #The word "crust" has lost its meaning.
        end
    end
end

jas_pizza = Pizza.new # This is instantiating the class - it's a NEW version of Pizza class, specifically for jas! 
jas_pizza.set_crust("Whatever") # This is calling the function above. I am TRYING to send it a string of "whatever" but it will not accept that and will instead puts "regular". You also don't NEED the parens but CANNOT use the equal sign (because we're not SETTING a variable, we're CALLING the function) (Ring ring it's function phone!)
jas_pizza.sauce = "marinara" # Ruby variables are weird and so even though we didn't call this one a string, now it's a string.
jas_pizza.size = 12 # This one is now an int.
jas_pizza.toppings = ["cheese", "basil", "tomato"] # And now this one is an array.

# All of the above? A specific instance of a class? THAT IS AN OBJECT. WOW.

# I wonder if you can change the variable type in other instances of the class?

puts jas_pizza.crust #If you want to see each "thing" in the class, you have to puts each one separately. 
puts jas_pizza.size
puts jas_pizza.sauce
puts jas_pizza.toppings

# If you puts just the whole class, it'll simply give you the memory spot where that instance/object is located. 