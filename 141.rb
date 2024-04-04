# QUESTION 1
# Finish annotating the code below.
x = 0                                  # 1
names = ["Saron", "Majora", "Danilo"]  # 2
names[1] = "Bob"                       # 3
x = names[2]                           # 4
names[0] = x                           # 5
pp names                               # 6

# 1: x is 0
# 2: x is 0, names is ["Saron", "Majora", "Danilo"]
# 3: names[1] ("Majora") becomes "Bob"
# 4: x becomes names[2] ("Danilo")
# 5: names[0] becomes x ("Saron" becomes "Danilo")
# 6: pretty print names ["Danilo", "Bob", "Danilo"]

# QUESTION 2
# Find and fix the mistakes in the code below.
items = [3, 2, 3, 2]
pp items
