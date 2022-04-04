
# num = 120005558140
# res = "%10X" % num
# print(res)
# d = ['985120005558140', '985120013751519', '900_226000054864']
# h = ['3D9.1BF0E37F7C', '3D9.1BF16084DF', '384.349EA72A50']

def pit_dectohex(s):
    left = s[0:3]
    if len(s) == 15:
        right = s[3:15]
    else:
        right = s[4:16]
    res = "%03X.%010X" % (int(left), int(right))
    return(res)

def pit_hextodec(s):
    left = s[0:3]
    if len(s) == 13:
        right = s[3:14]
    else:
        right = s[4:15]
    res = "%03d.%012d" % (int(left, 16), int(right, 16))
    return(res)

