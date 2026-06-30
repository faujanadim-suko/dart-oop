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

  //constructor keyword adalah method khusus yang digunakan untuk menginisialisasi objek dari sebuah class.
  Car(String brand, String color) {
    //menggunakan keyword this untuk membedakan antara properti class dan parameter constructor
    this.brand = brand;
    this.color = color;
  }

  String road() {
    // print("mobil berjaln menggunakan roda $wheels");
    return "mobil merek $brand berwarna $color, berjaln menggunakan roda $wheels sampai kecelakaan";
  }
}
