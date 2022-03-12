def run():
    squares = {i : i**3 for i in range (1, 1000) if i % 3 == 0 }
    print (squares)

if __name__=="__main__":
    run()