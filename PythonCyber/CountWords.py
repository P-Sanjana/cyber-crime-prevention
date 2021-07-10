
class CountWords:
    # Python program to count the number of occurrence
    # of a comp in the given string given string

    def countOccurences(str_, comp):
        #print(str_,comp,'<<<<')
        str_=str_.lower()
        comp=comp.lower()
        comp=comp.split()
        # split the string by spaces in a
        a = str_.split(" ")
        # search for pattern in a
        count = 0
        for w in comp:
            for i in range(0, len(a)):
            # if match found increase count
                if (w == a[i]):
                    count = count + 1
        return count

if __name__ == '__main__':
    str = "A computer science     portaL portal geeks  "
    comp = "computer science"
    print(Countcomps.countOccurences(str, comp))
