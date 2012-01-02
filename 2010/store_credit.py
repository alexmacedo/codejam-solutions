#! /usr/bin/env python

# Qualification Round Africa 2010
# Problem A. Store Credit
# url: http://code.google.com/codejam/contest/dashboard?c=351101#s=p0

if __name__ == "__main__":
    n = input()
    for i in range(1, n + 1):
        c = input()
        l = input()
        prices = [int(p) for p in raw_input().split(" ")]
        for j in range(0, l):
            for k in range(j + 1, l):
                if prices[j] + prices[k] == c:
                    break
            else:
                continue
            break
        print "Case #{0}: {1} {2}".format(i, j + 1, k + 1)
