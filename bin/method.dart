//method adalah function yang ada dalam class.
//sama seperti pada umumnya, method juga bisa menambahkan parameter dan return value.
void main(List<String> args) {
  Car car = Car();
  car.road();
  //menampilkan method dengan return value
  // print(car.road());
}

class Car {
  //properti
  String brand = "unknown";
  final int wheels = 4;
  String? color; //nullable property

  //method
  void road() {
    print("mobil berjaln menggunakan roda $wheels");
  }
  // method dengan return value
  // String road() {
  //   return "mobil berjaln menggunakan roda $wheels";
  // }
}
