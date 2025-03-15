#include <stdio.h>
#include <stdlib.h>
int n=50;
int nn=0;
int lessn=1;
int bigs=100;
int yess=1;
char s[1024]="";
void pprists(){
    printf("\033[43;30m\nAnswer me with these 3 symbols =+-");
    printf("\033[43;30m\n= for This is the number I thought of\n");
    printf("\033[43;30m\n+ My number is bigger");
    printf("\033[43;30m\n- My number is smaller");
}
int main(){
    printf("\033c\033[43;30m\ncomputer guess a number");
    printf("\033[43;30m\nThink of a number for 1 to 100");
    printf("\033[43;30m\nI'll try to guess your number, by trying");
    while (yess){
        pprists();
        n=lessn+((bigs-lessn)/2);
        printf("%d",n);
        fgets(s,1023,stdin);
        if (s[0]=='='){
           yess=0;
        }
        if (s[0]=='-'){
           bigs=n;
        }
        if (s[0]=='+'){
           lessn=n;
        }
    }
}