#include <iostream>
#include <string>
using namespace std;
class Toyota{

public:
void Avanza(int plat){
cout << "Avanza" << " " << plat << endl;
 }

void Agya(int plat){
cout << "Agya" << " " << plat << endl;
 }

void Innova(int plat){
cout << "Innova" << " " << plat << endl;
 }
   };
int main()
{
    Toyota ab;
    int i;
    cout << "input : ";
    cin >> i;
    string huruf[i];
    for (int z=0; z<i; z++){
        cout << "Huruf :";
        cin >> huruf[z];
    }
    int b=2;
    int plat = 1;
    if(huruf[0]=="hallo"||huruf[1]=="hallo"||huruf[2]=="hallo"){
    ab.Agya(plat);
    }

        if(huruf[0]=="sui"||huruf[1]=="sui"||huruf[2]=="sui"){
        ab.Avanza(plat);
    }
        if(huruf[0]=="paw"||huruf[1]=="paw"||huruf[2]=="paw"){
        ab.Innova(plat);
    }
    
    if(b=2){
        cout << "Okeh 2" << endl;
    }
    else{
       cout << "suii" <<endl;
    }
    return 0;
}