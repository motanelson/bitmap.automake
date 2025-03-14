n=50
nn=0
lessn=1
bigs=100
yess=True
s=""
def pprists():
    print("\033[43;30m\nAnswer me with these 3 symbols =+-")
    print("\033[43;30m\n= for This is the number I thought of\n")
    print("\033[43;30m\n+ My number is bigger")
    print("\033[43;30m\n- My number is smaller")
print("\033c\033[43;30m\ncomputer guess a number")
print("\033[43;30m\nThink of a number for 1 to 100")
print("\033[43;30m\nI'll try to guess your number, by trying")
while yess:
    pprists()
    n=lessn+((bigs-lessn)//2)
    print(n)
    s=input("").strip()
    if s=="=":
        yess=False
    if s=="-":
        bigs=n
    if s=="+":
       lessn=n