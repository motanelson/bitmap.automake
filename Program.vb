Module Program

 sub pprists()
    Console.WriteLine("\nAnswer me with these 3 symbols =+-")
    Console.WriteLine("\n= for This is the number I thought of\n")
    Console.WriteLine("\n+ My number is bigger")
    Console.WriteLine("\n- My number is smaller")
end sub
sub main()
    dim n as integer=50
    dim nn as integer=0
    dim lessn as integer=1
    dim bigs as integer=100
    dim yess as boolean =true
    dim s as string=""
    Console.BackgroundColor=ConsoleColor.DarkYellow
    Console.ForegroundColor = ConsoleColor.Black
    Console.Clear()
    Console.WriteLine("\ncomputer guess a number")
    Console.WriteLine("\nThink of a number for 1 to 100")
    Console.WriteLine("\nI'll try to guess your number, by trying")
    while (yess)
        pprists
        n=lessn+((bigs-lessn)/2)
        Console.WriteLine(n)
        s=Console.ReadLine().trim()
        if s="=" then  yess=false
        
        if s="-" then bigs=n
        
        if s="+" then  lessn=n
    end while
end sub
end Module 