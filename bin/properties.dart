//properties adalah variabel yang dimiliki oleh sebuah objek. Properti ini menyimpan data atau informasi tentang objek tersebut. Misalnya, sebuah objek mobil dapat memiliki properti seperti warna, merek, dan jumlah roda.
void main(List<String> args) {
  Car car = Car(); //membuat objek dari class Car
  //manipulasi properti
  car.brand = "Toyota"; //mengubah properti brand dari objek car
  car.color = "ijo";
  // car.wheels; //mengakses properti wheels dari objek car

  //menampilkan properti
  //menampilkan properti dari objek car menggunakan keyword titik (.) untuk mengakses properti dari objek car.
  print(car.brand);
  print(car.color);
  // print(car.wheels); //mengakses properti wheels dari objek car menggunakan keyword titik (.) untuk mengakses properti dari objek car. Properti wheels adalah final, sehingga nilainya tidak dapat diubah setelah objek dibuat.
  print(car.wheels);
}

class Car {
  String brand = "unknown";
  final int wheels = 4;
  String? color; //nullable property
}
