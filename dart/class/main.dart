import 'city.dart';
import 'country.dart';

void main() {
  City item = City("Geumga");
  print(item.city);
  print(item.color);
  print(item.name);
  print(item.language);
  item.callSuper();
  item.showPeple();
  item.showProblem();

  
}