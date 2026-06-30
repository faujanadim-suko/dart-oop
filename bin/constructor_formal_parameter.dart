void main(List<String> orgs) {
  // Car car = Car();
  // print(car.road());

  //memanggil constructor dengan parameter
  Car carr = Car("hoda", "kelabu");
  print(carr.brand);
  print(carr.color);
  print(carr.road());
}

class Car {
  String brand = "unknown";
  final int wheels = 4;
  String? color; //nullable property

  Car(this.brand, this.color) {
    //menggunakan formal parameter untuk menginisialisasi properti class
  } //output sama yg beda hanya cara penulisan formal parameter lebih ringkas dan efisien

  String road() {
    // print("mobil berjaln menggunakan roda $wheels");
    return "mobil merek $brand berwarna $color, berjaln menggunakan roda $wheels sampai kecelakaan";
  }
}
