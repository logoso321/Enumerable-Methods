require "./enumerable"

a = [3,2,4,5]
b = a.my_none?{|x| x==4}
print(b)