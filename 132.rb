# QUESTION 1
# Finish annotating the code below.
# Then run the code to see if the output matches your annotation.
word = "hi"           # 1
index = 0             # 2
while index < 2       # 3 6 9
  word = word + word  # 4 7
  index = index + 1   # 5 8
end
p word                # 10

# 1: word is "hi"
# 2: word is "hi", index is 0
# 3: 0 < 2, run loop
# 4: word is "hihi"
# 5: index is 1
# 6: 1 < 2, run loop
# 7: word is "hihihihi"
# 8: index is 2
# 9: 2 is not < 2, exit loop
# 10: print "hihihihi"


# QUESTION 2
# Finish annotating the code below.
# Then run the code to see if the output matches your annotation.
index = 0             # 1
while index > 2       # 2
  puts index          # 
  index = index + 1   # 
end 
puts "Done!"          # 3

# 1: index = 0
# 2: index not > 2, end loop
# 3: prints "Done!"
