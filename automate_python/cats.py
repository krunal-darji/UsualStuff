print('How many cats do you own?')
numCats = input()
try:
    if int(numCats) >= 4:
        print('That is a lot of cats')
    elif int(numCats) <= 0:
        print("You're probaby better off avoiding cats and get a dog")
    else:
        print('That is not a lot of cats')
except ValueError:
    print('You did not enter a number')
