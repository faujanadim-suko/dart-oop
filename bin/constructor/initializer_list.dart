//initializer list adalah fitur pada dart yang memungkinkan kita untuk menginisialisasi properti class sebelum constructor dijalankan. Hal ini berguna untuk mengatur nilai default atau melakukan perhitungan sebelum objek dibuat.
void main(List<String> orgs) {
  //memanggil named constructor dengan parameter brand
  Car carWithBrand = Car.withBrand("honda");
  print(carWithBrand.brand);
}

class Car {
  String brand = "unknown";
  final int wheels = 4;
  String? color; //nullable property
  int seats = 2; //default value

  //named parameter dengan initializer list
  Car.withBrand(this.brand) : seats = 4, color = "pink" {
    //initializer list digunakan untuk menginisialisasi properti seats dan color sebelum constructor dijalankan
    print("objek mobil $brand ini memiliki $seats kursi dnn berwarna $color!!");
  }
}
