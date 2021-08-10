import 'country.dart';
import 'problem.dart';

class City extends Country with Problem{
  var city;
 

  City(this.city) : super("south korea","korean");
  
  void callSuper(){
    super.showPeple();

  }
  @override
  void showPeple(){
    print("จำนวนคนใน $city มี 242510 คน  ");
  }
}