#include <iostream>
#include <bitset>

int main(){
    std::bitset <2000000> prime_flag;
    prime_flag.set();
    prime_flag.reset(0);
    prime_flag.reset(1);

    long int sum = 0;
    for(int i = 0; i < 2000000; i++){
        if(i % 10000 == 0) std::cout << i << std::endl;
        if(prime_flag[i] != 0){
            sum += i;
            prime_flag.reset(i);
            for(int j = i+1; j <= 2000000;j++){
                if(prime_flag[j] == 1){
                    if(j % i == 0){
                        prime_flag.reset(j);
                    }
                }
            }
        }
    }

    std::cout << "Answer: " << sum << std::endl;
    return 0;
}
