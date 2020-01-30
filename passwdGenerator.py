import random
alpha = "A B C D E F G H I J K L M N O P Q R S T U V W X Y Z a b c d e f g h i j k l m n o p q r s t u v w x y z"
num = "0 1 2 3 4 5 6 7 8 9"
alphanumList = alpha.split() + num.split()
alphanumList.sort()

while True:
    print("Password should be a minimum of 6 and a maximum of 16.")
    passLen = int(input("How long do you want your password to be: "))
    output = ''
    random.shuffle(alphanumList)
    if (passLen >= 6) and (passLen <= 16):
        for password in range(passLen):
            randomValue = random.choice(alphanumList)
            output = output + randomValue
        break
    else:
        if (passLen < 6) or (passLen > 16):
            print("Sorry, password length is less than 6 or greater than 16.")
print(output)
