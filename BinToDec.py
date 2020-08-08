#! /usr/bin/python3
#Note: Binary to Decimal Calculator
#Author: Khondakar

choice = int(input("[1] Decimal to Binary conversion. " + "\n[2] Binary to Decimal conversion. \nEnter choice: "))
# print("1: Decimal to Binary")
# print("2: Binary to Decimal")

val = ""

if choice == 1:
    numb = int(input("Enter your whole Decimal number (integer): "))
    while numb > 1:
        val = str(numb % 2) + val
        numb = numb // 2
    val = str(numb % 2) + val
    print(val)
elif choice == 2:
    total = 0
    numb = (input("Enter your whole Binary number: "))
    for i in range(1, (numb.__len__())+1):
        if numb[-i] == str(1):
            total = total + (2**(i-1))
    print(total)

