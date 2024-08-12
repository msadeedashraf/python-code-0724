try:
    f = open("./demofile.txt", "a")
    try:
        f.write("Lorum Ipsum Lorum Ipsum Lorum Ipsum Lorum Ipsum ")
    except:
        print("Something went wrong when writing to the file")
    finally:
        f.close()
except:
    print("Something went wrong when opening the file")
