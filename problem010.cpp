#include <iostream>
#include <vector>
int main(){
    int sum = 0;
    for(int i = 2000000; i > 1; i--){
        int notPrime = 0;
        for(int j = 2; j < i; j++){
            if(i % j == 0){
                notPrime = 1;
                break;
            }
        }

        if(notPrime == 0){
            sum += i;
        }

        if(i % 1000 == 0){
            std::cout << i << std::endl;
        }
    }
    std::cout << "Answer: " << sum << std::endl; 
    return 0;
}
