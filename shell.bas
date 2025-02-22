color 0,6
cls
dim t as integer
dim a as string
t=1
open command(1) for input as #1
while not(eof(1))
    line input #1,a
    a=rtrim(ltrim(a))
    if a<>"" then
        shell a
    end if
wend
close #1
