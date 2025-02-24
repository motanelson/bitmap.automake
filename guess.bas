color 0,6
cls
randomize timer
dim t as integer=1
dim s as string
dim n as integer=int(rnd()*99+1)
dim nn as integer
while t
    input "give me a number fom 1 to 100 to guess  ";nn
    if nn>n then print "you number is to big"
    if nn<n then print "you number is to lower"
    if n=nn then
        print "you guess the number "
        t=0
    end if
wend