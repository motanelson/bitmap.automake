#include <stdio.h>
#include <stdlib.h>
#include <string.h>
int main(){
    int n=0;
    int nn=0;
    int t=1;     
    char nm[1025]="\0";
    char files[1025]="\0";
    FILE *f1;
    puts("\033c\033[43;30m\ngive me a new file name ? ");
    fgets(files,1024,stdin);
    files[strlen(files)-1]=0;
    puts("\033[43;30m\nenter new line to exit \n");
    
    f1=fopen(files,"w");
    while(t){
         fgets(nm,79,stdin);
          
         fputs(nm,f1);
         if(nm[0]=='\n')t=0;
    }
    fclose(f1);
    return 0;
}
