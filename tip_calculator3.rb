def calc_percent base, percent
	base * percent / 100
end

print "Meal cost: "
meal = Float(gets.chomp)

print "Tax percent (non-decimal): "
tax = Float(gets.chomp)

print "Tip percent (non-decimal): "
tip = Float(gets.chomp)

tax_value = calc_percent(meal, tax)
meal_with_tax = meal + tax_value
tip_value = calc_percent(meal_with_tax, tip)
total_cost = meal_with_tax + tip_value

puts "The pre-tax cost of your meal was $%.2f." % meal
puts "At %d%%, tax for this meal is $%.2f." % [tax, tax_value]
puts "For a %d%% tip, you should leave $%.2f." % [tip, tip_value]
puts "The grand total for this meal is then $%.2f." % total_cost