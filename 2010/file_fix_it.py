#! /usr/bin/env python

# Round 1B 2010
# Problem A. File Fix-it
# url: http://code.google.com/codejam/contest/dashboard?c=635101#s=p0

class DirList(object):
    def __init__(self):
        self._list = []
    
    def append(self, item):
        self._list.append(item)

    def __iter__(self):
        return iter(self._list)
    
    def __contains__(self, item):
        for d in self._list:
            if str(d) == item:
                return True
        return False

    def __getitem__(self, key):
        for d in self._list:
            if str(d) == key:
                return d
        raise KeyError()


class DirNode(object):
    def __init__(self, name):
        self.name = name
        self.subdirs = DirList()
    
    def add_subdir(self, name):
        self.subdirs.append(DirNode(name))
    
    def total(self):
        total = 1
        for subdir in self.subdirs:
            total += subdir.total()
        return total
    
    def __contains__(self, item):
        return item in self.subdirs
    
    def __getitem__(self, key):
        item = self.subdirs[key]
        return item
    
    def __str__(self):
        return self.name


def main():
    t = input()
    for i in range(1, t+1):
        n, m = [int(c) for c in raw_input().split(" ")]
        root = DirNode("root")
        for j in range(0, n):
            path = raw_input().split("/")[1:]
            parent = root
            for p in path:
                if p not in parent:
                    parent.add_subdir(p)
                parent = parent[p]
        existing_total = root.total() - 1
        for j in range(0, m):
            path = raw_input().split("/")[1:]
            parent = root
            for p in path:
                if p not in parent:
                    parent.add_subdir(p)
                parent = parent[p]
        total = root.total() - 1
        total -= existing_total
        if total < 0:
            total = 0
        print "Case #{0}: {1}".format(i, total)


if __name__ == '__main__':
    main()