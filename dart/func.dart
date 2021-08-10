import 'dart:ffi';

void main() {
  callweb("cheytac.usa" , port: "443" ,protocal:"https");
}

void callweb(String web,{String protocal = "HTTP",String port = "80"}) => print("$web $protocal $port ");

  
//NO.1
String callGen(int year ){
  print(year);
  
  /* if(year >= 1996){
    print("gen z");
  }
    else
      print("gen y or upper");
    */
    
    //check if          true         or           false
  var gen = (year >= 1996) ?  "gen z" : "gen y or upper"; 

  return gen;

}

//NO.2
int callColor([String newColor = "pink"]){

  List<dynamic> colors = ["red","green","blue"];

  colors.add(newColor);

   for(var i in colors){

    print(i);

  }

  return colors.length ; 

}




