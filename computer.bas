dim n as integer=50
dim nn as integer=0
dim lessn as integer=1
dim bigs as integer=100
dim yess as integer =1
dim s as string=""
color 0,6
cls
sub pprists()
    print "Answer me with these 3 symbols =+-"
    print "= for This is the number I thought of"
    print "+ My number is bigger"
    print "- My number is smaller"
end sub
print "computer guess a number"
print "Think of a number for 1 to 100"
print "I'll try to guess your number, by trying"
while yess:
    pprists
    n=lessn+((bigs-lessn)/2)
    print n 
    input "";s
    s=ltrim(rtrim(s))
    if s="=" then yess=False
    if s="-" then bigs=n
    if s="+" then lessn=n
wend