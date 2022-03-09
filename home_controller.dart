import 'package:get/get.dart';

class Hcon extends GetxController {
  RxInt dataInt = 0.obs;

  void changeData() => dataInt++;

  @override
  void onInit() {
    // TODO: implement onInit
    
    /**SELALU MEMANTAU SETIAP ADA PERUBAHAN */
    // ever(
    //   dataInt,
    //   (callback) => print("perubahan"),
    // );

    /**MEMANTAU HANYA SEKALI KETIKA APLIKASI DIJALANKAN */
    // once(
    //   dataInt,
    //   (callback) => print("memantau sekali"),
    // );

  /**MEMANTAU SETIAP 2 DETIK SETELAH ADA AKTIVITAS (BISA MENCEGAH DDOS) */
  // debounce(
  //     dataInt,
  //     (callback) => print("memantau 2 detik setelah berhenti"),
  //     time: Duration(seconds: 2)
  //   );


  interval(
      dataInt,
      (callback) => print("memantau setiap 2 detik sekali"),
      time: Duration(seconds: 2)
    );


    super.onInit();
  }
}
