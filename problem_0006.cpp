#include <iostream>
#include <stdlib.h>
#include <math.h>

int main(){
    int squareSum = 0;
    int sumSquare = 0;
    
    /*
     * bruteforce way */
    for(int i = 1; i <= 100; i++){
        squareSum += i * i ;
        sumSquare += i;
    }
    sumSquare = sumSquare * sumSquare;

    std::cout << "Difference: " << abs(squareSum - sumSquare) << std::endl; 
}
