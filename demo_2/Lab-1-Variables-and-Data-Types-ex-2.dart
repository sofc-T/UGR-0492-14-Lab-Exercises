

import 'dart:io';

void main(){
  int speedOfLight = 299792458;
  print("Enter the distance in meters:");
  try{

    double distance = double.parse(stdin.readLineSync()!);
    double time = distance / speedOfLight;
    print(time);}

  catch(e){

    print("Invalid input type");
  }
}

