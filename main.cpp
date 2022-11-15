#include <iostream>
#include <string>
using namespace std;

class Toyota{

public:
void Avanza(int platvanza){
cout <<"Avanza" << " " << platvanza << endl;
 }

void Agya(int platgya){
cout << "Agya" << " " << platgya << endl;
 }

void Innova(int platnova){
cout << "Innova" << " " << platnova << endl;
 }
   };

class Mitsubishi{
public:
void Pajero(int platjero){
cout << "Pajero" << " " << platjero << endl;
 }

void Xpander(int platpander){;
cout << "Xpander" << " " << platpander << endl;
 }

void Outlander(int platlander){
cout << "Outlander" << " " << platlander << endl;
 }
   };

class Honda{
public:
void Brio(int platbrio){
cout << "Brio" << " " << platbrio<< endl;
}

void Jazz(int platjazz){
cout << "Jazz" << " " << platjazz << endl;
}

void CRV(int platcrv){
cout << "CRV" << " " << platcrv << endl;
}
};

int main(){
int z,platvanza,platgya,platnova,platpander,platjero,platlander,platjazz,platbrio,platcrv;
string jenis[9];
Toyota ab;
Mitsubishi ac;
Honda ad;
cout << "jumlah mobil yang akan di input : ";
cin  >> z;
for(int i=0; i<z; i++){
    cout << "Jenis mobil :";
    cin >> jenis[i];
}

if(jenis[0]=="avanza"||jenis[1]=="avanza"||jenis[2]=="avanza"||jenis[3]=="avanza"||jenis[4]=="avanza"||jenis[5]=="avanza"||jenis[6]=="avanza"||jenis[7]=="avanza"||jenis[8]=="avanza"){
    cout << "plat : ";
    cin >> platvanza;
}
if(jenis[0]=="agya"||jenis[1]=="agya"||jenis[2]=="agya"||jenis[3]=="agya"||jenis[4]=="agya"||jenis[5]=="agya"||jenis[6]=="agya"||jenis[7]=="agya"||jenis[8]=="agya"){
    cout << "plat : ";
    cin >> platgya;
}
if(jenis[0]=="innova"||jenis[1]=="innova"||jenis[2]=="innova"||jenis[3]=="innova"||jenis[4]=="innova"||jenis[5]=="innova"||jenis[6]=="innova"||jenis[7]=="innova"||jenis[8]=="innova"){
    cout << "plat : ";
    cin >> platnova;
}

if(jenis[0]=="pajero"||jenis[1]=="pajero"||jenis[2]=="pajero"||jenis[3]=="pajero"||jenis[4]=="pajero"||jenis[5]=="pajero"||jenis[6]=="pajero"||jenis[7]=="pajero"||jenis[8]=="pajero"){
    cout << "plat : ";
    cin >> platjero;
}
if(jenis[0]=="xpander"||jenis[1]=="xpander"||jenis[2]=="xpander"||jenis[3]=="xpander"||jenis[4]=="xpander"||jenis[5]=="xpander"||jenis[6]=="xpander"||jenis[7]=="xpander"||jenis[8]=="xpander"){
    cout << "plat : ";
    cin >> platpander;
}
if(jenis[0]=="outlander"||jenis[1]=="outlander"||jenis[2]=="outlander"||jenis[3]=="outlander"||jenis[4]=="outlander"||jenis[5]=="outlander"||jenis[6]=="outlander"||jenis[7]=="outlander"||jenis[8]=="outlander"){
    cout << "plat : ";
    cin >> platlander;
}

if(jenis[0]=="brio"||jenis[1]=="brio"||jenis[2]=="brio"||jenis[3]=="brio"||jenis[4]=="brio"||jenis[5]=="brio"||jenis[6]=="brio"||jenis[7]=="brio"||jenis[8]=="brio"){
    cout << "plat : ";
    cin >> platbrio;
}
if(jenis[0]=="jazz"||jenis[1]=="jazz"||jenis[2]=="jazz"||jenis[3]=="jazz"||jenis[4]=="jazz"||jenis[5]=="jazz"||jenis[6]=="jazz"||jenis[7]=="jazz"||jenis[8]=="jazz"){
    cout << "plat : ";
    cin >> platjazz;
}
if(jenis[0]=="crv"||jenis[1]=="crv"||jenis[2]=="crv"||jenis[3]=="crv"||jenis[4]=="crv"||jenis[5]=="crv"||jenis[6]=="crv"||jenis[7]=="crv"||jenis[8]=="crv"){
    cout << "plat : ";
    cin >> platcrv;
}
cout << endl;
cout << "Toyota" << endl;
if(jenis[0]=="avanza"||jenis[1]=="avanza"||jenis[2]=="avanza"||jenis[3]=="avanza"||jenis[4]=="avanza"||jenis[5]=="avanza"||jenis[6]=="avanza"||jenis[7]=="avanza"||jenis[8]=="avanza"){
    ab.Avanza(platvanza);
}
if(jenis[0]=="agya"||jenis[1]=="agya"||jenis[2]=="agya"||jenis[3]=="agya"||jenis[4]=="agya"||jenis[5]=="agya"||jenis[6]=="agya"||jenis[7]=="agya"||jenis[8]=="agya"){
    ab.Agya(platgya);
}
if(jenis[0]=="innova"||jenis[1]=="innova"||jenis[2]=="innova"||jenis[3]=="innova"||jenis[4]=="innova"||jenis[5]=="innova"||jenis[6]=="innova"||jenis[7]=="innova"||jenis[8]=="innova"){
    ab.Innova(platnova);
}
cout << endl;
cout << "Mitsubishi" << endl;

if(jenis[0]=="pajero"||jenis[1]=="pajero"||jenis[2]=="pajero"||jenis[3]=="pajero"||jenis[4]=="pajero"||jenis[5]=="pajero"||jenis[6]=="pajero"||jenis[7]=="pajero"||jenis[8]=="pajero"){
    ac.Pajero(platjero);
}
if(jenis[0]=="xpander"||jenis[1]=="xpander"||jenis[2]=="xpander"||jenis[3]=="xpander"||jenis[4]=="xpander"||jenis[5]=="xpander"||jenis[6]=="xpander"||jenis[7]=="xpander"||jenis[8]=="xpander"){
    ac.Xpander(platpander);
}
if(jenis[0]=="outlander"||jenis[1]=="outlander"||jenis[2]=="outlander"||jenis[3]=="outlander"||jenis[4]=="outlander"||jenis[5]=="outlander"||jenis[6]=="outlander"||jenis[7]=="outlander"||jenis[8]=="outlander"){
    ac.Outlander(platlander);
}
cout << endl;
cout << "Honda" << endl;

if(jenis[0]=="brio"||jenis[1]=="brio"||jenis[2]=="brio"||jenis[3]=="brio"||jenis[4]=="brio"||jenis[5]=="brio"||jenis[6]=="brio"||jenis[7]=="brio"||jenis[8]=="brio"){
    ad.Brio(platbrio);
}
if(jenis[0]=="jazz"||jenis[1]=="jazz"||jenis[2]=="jazz"||jenis[3]=="jazz"||jenis[4]=="jazz"||jenis[5]=="jazz"||jenis[6]=="jazz"||jenis[7]=="jazz"||jenis[8]=="jazz"){
    ad.Jazz(platjazz);
}
if(jenis[0]=="crv"||jenis[1]=="crv"||jenis[2]=="crv"||jenis[3]=="crv"||jenis[4]=="crv"||jenis[5]=="crv"||jenis[6]=="crv"||jenis[7]=="crv"||jenis[8]=="crv"){
    ad.CRV(platcrv);
}
}