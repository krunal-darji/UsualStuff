def two_sums(a, t):
    for (x, y) in enumerate(a):
        for (x2, y2) in enumerate(a):
            if y != y2:
                if (y + y2) == t:
                    return [x, x2]
print (two_sums([2,7,11,15], 9))