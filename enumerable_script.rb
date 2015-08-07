require "./enumerable"

a = [2,2,1,1]
b = a.my_inject(1){|product, n| product * n}
print(b)