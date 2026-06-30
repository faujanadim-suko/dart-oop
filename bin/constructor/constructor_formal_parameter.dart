void main(List<String> orgs) {
  //memanggil constructor dengan parameter
  Car carr = Car("hoda", "kelabu");
  Car car2 = Car("hoda", "kelabu");
  print(car2.brand);
  print(car2.color);
  print(carr.brand);
  print(carr.color);
  //print(carr.road());
  print(carr == car2);
}

class Car {
  String brand = "unknown";
  final int wheels = 4;
  String? color; //nullable property

  //formal parameter
  Car(this.brand, this.color);
  //menggunakan formal parameter untuk menginisialisasi properti class
  //output sama yg beda hanya cara penulisan formal parameter lebih ringkas dan efisien

  String road() {
    // print("mobil berjaln menggunakan roda $wheels");
    return "mobil merek $brand berwarna $color, berjaln menggunakan roda $wheels sampai kecelakaan";
  }
}
