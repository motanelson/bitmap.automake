int n=50;
int nn=0;
int lessn=1;
int bigs=100;
bool yess=true;
String s="";
void pprists(){
    Console.WriteLine("\nAnswer me with these 3 symbols =+-");
    Console.WriteLine("\n= for This is the number I thought of\n");
    Console.WriteLine("\n+ My number is bigger");
    Console.WriteLine("\n- My number is smaller");
}
void mains(){
    Console.BackgroundColor=ConsoleColor.DarkYellow;
    Console.ForegroundColor = ConsoleColor.Black;
    Console.Clear();
    Console.WriteLine("\ncomputer guess a number");
    Console.WriteLine("\nThink of a number for 1 to 100");
    Console.WriteLine("\nI'll try to guess your number, by trying");
    while (yess){
        pprists();
        n=lessn+((bigs-lessn)/2);
        Console.WriteLine(n);
        s=Console.ReadLine();
        if (s[0]=='='){
           yess=false;
        }
        if (s[0]=='-'){
           bigs=n;
        }
        if (s[0]=='+'){
           lessn=n;
        }
    }
}
mains();