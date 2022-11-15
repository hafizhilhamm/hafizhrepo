#include <iostream>
#include <string>
using namespace std;

int main()
{
    int i;
    string huruf;
    cout << "input : ";
    cin >> i;
        for (int z=0; z<i; z++){
        cout << "Huruf :";
        cin >> huruf;
    }
    
   
    int b=2;
    
    if(huruf=="baw"){
        cout << "Toyota" << endl;
        cout << huruf << endl;
    }

        if(huruf=="bab"){
        cout << "sui" <<endl;
    }
    
    if(b=2){
        cout << "Okeh 2" << endl;
    }
    else{
       cout << "suii" <<endl;
    }
    return 0;
}