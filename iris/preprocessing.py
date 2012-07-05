#!/usr/bin/python

# filename : preprocessing.py

if __name__ == "__main__":
        import sys
        #start = False
        buf = []
        lcnt = 0
        for l in sys.stdin:
                lcnt = lcnt +1
                if lcnt == 1:
                        continue
                a = l.split("|")
                al = map(lambda x: x.strip(), a)
                if len(al) == 7 and lcnt != 2:
                        st = "|".join(buf[0:63])
                        stu = unicode(st, "euc-kr").encode("utf-8")
                        if len(buf) != 64:
                                sys.stderr.write(str(lcnt) + "\n")
                        else:
                                sys.stdout.write(stu + "\n")
                        #start = True
                        buf = al
                else:
                        buf = buf + al
        st = "|".join(buf[0:63])
        stu = unicode(st, "euc-kr").encode("utf-8")
        sys.stdout.write("|".join(stu) + "\n")


