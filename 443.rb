# QUESTION 1
# The following code uses the money Ruby library.
# First read the library documentation: https://github.com/RubyMoney/money 
# Then write comments next to each line explaining what you think the code is doing.
require "money"                          # first, import the library.

I18n.enforce_available_locales = false   # in case of not having a locale, program will run anyway without raising an exception.
I18n.locale = :en                        # sets locale to en (this impacts the formatting of the currency, displaying how it would in this region).
Money.default_currency = "USD"           # sets default currency to "USD". currency stores all relevant information about a currency, and setting a defualt should allow the program to not have to set a currency each time.
Money.add_rate("CAD", "USD", 0.8)        # as there are no default exchange rates given from something like a database, it has to be given. this sets the CAD to USD rate to 0.8.

money1 = Money.new(1000)                 # create a new Money object (USD is default here) using the smallest unit of that currency, in this case cents.
money2 = Money.new(500, "CAD")           # create another Money object, this time in CAD.
result = money1 + money2                 # add the two currencies together, should output to the default currency.
puts "Total: #{result}"                  # result should be 1400 cents, or $14.
