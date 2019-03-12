from enum import Enum
print("\n------Which characters are allowed:")
#1.a characters in for loop
string = "gulsah"
result = " "
for char in string: 
    if char == 'l':
        result += char.upper()
    else:
        result += char

print (result) #guLsah --> l will be uppercase after termination


#1.b integers in for loop

result = " "
for integer in range(5):
    result += str(integer) #01234

print (result)

#1.c python does not allow floating points 
""" result = " "

for floating in range(2.9, 3.5, 0.1):
    result += str(floating)

print (result) """

#floating points can be taken by creating a list 
#for loop structure is used for "floating" list however floating points are not directly allowed in for loop
floating = [x/10.0 for x in range (29,35,1)]
print(floating)

#1.d python allows enumarations in for loop
class Coffee(Enum):
    __order__ = 'latte flatWhite turkishCoffee americano'

    latte = 1
    flatWhite = 2
    turkishCoffee = 3
    americano = 4

for drink in Coffee: 
    print(drink)

#2.a loop variables are objects in python
#any object compatible with the type desired is accepted 

print("\n------Scope Test")
print(char)
print(integer)
print(drink)

char = 'B'

print(string) 

#lastly iterated loop variable can be reached and used after for loop terminates
#however changed variable is only an iterator, it will not affect the object being iterated by this variable
#check what happens when we use a global 
loopVar = -1

def func():
    for loopVar in range(5,9):
        print(loopVar)

func()
print(loopVar)


print("\n------Change loop variable inside loop")
#3.a can we change a loop variable within a loop?(
for x in range(3):
    x = x*10
    print(x)

#due to scoping inner x will not be the same thing as loop control variable x 
#so NO, we can not change a loop variable inside loop --> increases reliability 


# 4.a new x is evaluated and compared to the value within "range()" once for each iteration
# x's initial value is evaluated once, 0 is default for one parameter range function

def numberGenerator(num):
    print("I am evaluated")
    return num + 5

#for k in range(0, numberGenerator(k)): --> k will not be accepted as parameter

for k in range(0, numberGenerator(0)):
    print(k)
