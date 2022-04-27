# * Ranges: a range of sequential objects, most often numbers. 
# useful when working with loops and iterators. 

# inclusive range: 2 periods, inlcuding the first and last number.
1..10 # will be used most of the time

# exclusive range: 3 periods, DOES NOT include the LAST number. 
1...10

inclusive = 1..10
inclusive.begin # 1
inclusive.end # 10

exclusive = 1...10
exclusive.begin # 1
exclusive.end # ! 10

# trick
array = [*inclusive]

