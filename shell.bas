color 0,6
cls
dim t as integer
dim a as string
t=1
while t
    input ">: ";a
    a=rtrim(ltrim(a))
    if a="" or "exit"=lcase(a) then
        t=0
    else:
        shell a
    end if
wend

