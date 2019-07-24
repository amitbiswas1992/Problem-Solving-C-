class Solution {
public:
    int countPrimes(int n) {
        if(n<=2) return 0;
        bool isprime[n];
        for(int i=0; i<n; i++) isprime[i]={true};
        int prime = 2;
        while(prime<=n/2){
            for(int mul=2; mul*prime<n; mul++) isprime[mul*prime]=false;
            prime++;
            while(prime<=n/2&&isprime[prime]==false) prime++;
        }
        int num=0;
        for(int i=2; i<n; i++){
            if(isprime[i]) num++;
        }
        return num;

    }
};
