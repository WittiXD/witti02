class Country{

  // this property
  var name;
  var language;
  var _animal;
  static var city = "seoul";
  var color = "ขาว แดง น้ำ ดำ";
  // this constructor
  Country(this.name,this.language);
  // this counstructor
 // Country.language(String name,String language) : this(name,language);


  String showLanguage() => this.language;

  // this fucn setter
  void setAnimal(String animal){
    this._animal = animal;

  }
  // this fucn getter
  String getAnimal() => this._animal;

  static void callHello() => print("안녕하세요");

  void showPeple(){
    print("จำนวนคนในประเทศ 51.71ล้านคน");
  }
}

  



