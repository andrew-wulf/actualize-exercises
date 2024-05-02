# DELIBERATE PRACTICE REFLECTION
# Paste a deliberate practice question you are currently working on below.
# Write the code to solve the problem without looking at any notes or other resources.

#Write a Ruby program that stores the weight of a package and the destination (domestic or international). Then calculate the shipping fee based on the following conditions:

#If the destination is domestic:
#If the weight is less than or equal to 1 kg, the shipping fee is $5.
#If the weight is greater than 1 kg, the shipping fee is $10.
#If the destination is an international shipment:
#If the weight is less than or equal to 1 kg, the shipping fee is $15.
#If the weight is greater than 1 kg, the shipping fee is $25.


def shipping_fee(weight, dest)
    if dest == 'domestic'
        if weight <= 1
            return 5
        else
            return 10
        end
    elsif dest == 'international'
        if weight <= 1
            return 15
        else
            return 25
        end
    end
end


packages = [{item: 1, weight: 1.3, dest: 'domestic'}, {item: 2, weight:0.9, dest: 'domestic'}, {item: 3, weight: 1.3, dest: 'international'}, {item: 4, weight: 0.2, dest: 'international'}]

for pack in packages
    i, w, d = *pack.values
    fee = shipping_fee(w, d)
    puts "Package #{i} --- Weight: #{w}kg | Dest: #{d} | Shipping Fee: $#{fee}.00 ---"
end

# Were you able to easily solve the problem from memory?
# If so, describe the next skill you will start to practice tomorrow.
# If not, describe the part you got stuck on that requires more practice.


#yes, not sure what to practice tomorrow.