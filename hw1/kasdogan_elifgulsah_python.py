array = ["Banana", "Apple", "Pear" , "Melon"]
for x in range(0, len(array)):
    print(array[x])

array2 = [0 for x in range(5)]

for x in range(0,5):
    array2[x] = [0 for y in range(5)]

counter = 0
for x in range(0, len(array2)):
    for y in range(0, len(array2[0])):
        array2[x][y] = counter
        counter += 1

print(array2)

jagged = [["Gulsah"], ["Elif", "Esra"]]
print(jagged)


array3 = [1, 2, 3, 4, 5, 6, 7, 8]
sliced = array3[1:4]

print("array: ")
print(array3)

print("now it is sliced: ")
print(sliced)
