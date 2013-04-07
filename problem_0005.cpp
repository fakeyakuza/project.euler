#include <iostream>
#include <stdlib.h>
#include <bitset>
#define MaxDivideNumber 20
int main(){

    
    /*
     * bruteforce way */
    for(int i = 1; i<2432902008176640000 ; i++){
        for(int j = 1; j <= 20; j++){
            if(i % j != 0){
                break;
            }else if(j == 20){  
                std::cout << "Smallest number: " << i << std::endl; 
                exit(0);
            }
        }
    }
}
