
from ast import Str
import random
import os

def clear():
    if os.name == "posix":
        os.system("clear")
    elif os.name ==("ce", "nt", "dos"):
        os.system("cls")

def run ():
    for i in range (18):
        print("*", end=" ")
    print("\n*      Welcome to HANGMAN GAME    *")
    for i in range (18):
        print("*",end=" " )

    print ("\nObjetive : The objective of the game is to guess the secret word using our ingenuity and imagination. \n")
    print("Rulers : You must enter only letters, numbers and special characters are not allowed.\n You can only enter one letter at a time and then see the result on the board. \n By guessing the secret word you can advance to the next level to complete the next word")
    input(" Press enter key to start. ")
    clear()

    data = []
    word_usser_str = ""
    all_letters = []

    with open("./archivos/data.txt", "r",  encoding="utf-8") as f:
        for word in f:
            data.append((word.strip()))
            data_enumerate = list((data))
    #print(data_enumerate)

    for word_secret in data_enumerate:
        random.shuffle(data_enumerate)
        #print (word_secret)
        word_usser = []
        all_letters=[]

        for i in range(len(word_secret)):
                word_usser.append("_")

        
        while word_usser_str != word_secret:
            print("THE HANGMAN\n")
            
            
            for letter in word_secret:
                if letter in word_usser:
                    print(letter, end="")
                    
                else:
                    print(" _ ", end="")

            letter_usser = (input("\n \n Enter a Letter: "))
            letter_usser = letter_usser.lower()
            

            clear()
            
            if len(letter_usser) != 1 or letter_usser.isnumeric():
                print ("\n You must enter only one letter")
            elif letter_usser in all_letters:
                print(" \n \n You have already written this letter before try a new one")
            else:
                all_letters.append(letter_usser)

            
            for i in range(len(word_secret)):
                if word_secret[i] == letter_usser:
                    word_usser[i] = letter_usser
                    word_usser_str = "".join(word_usser)
                    #print(word_usser_str)

            if letter_usser not in word_secret:
                input("\n This letter does not belong to the SECRET WORD please try again\n press enter to continue  ")
                clear()
           

        else:

            print ("\n You are a CHAMPION, goin to the nex level ")
        
        clear()
        



if __name__=="__main__":

    run()

