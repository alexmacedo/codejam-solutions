#! /usr/bin/env python

# Qualification Round Africa 2010
# Problem B. Reverse Words
# url: http://code.google.com/codejam/contest/dashboard?c=351101#s=p1

if __name__ == "__main__":
    n = input()
    for i in range(1, n + 1):
        words = raw_input().split(" ")
        words.reverse()
        words = " ".join(words)
        print "Case #{0}: {1}".format(i, words)
