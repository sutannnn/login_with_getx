import 'package:get/get.dart';

class HomeController extends GetxController {
  final name = 'Hany';
  final title = [
    'Jangan lupa semangat hari ini :)',
    'Jangan lupa absen hari ini!',
    'Pengingat: Jangan absen hari ini!',
  ];
  final time = ['24 April 2023', '24 April 2023', '24 April 2023'];
  final img = [
    'assets/images/1.png',
    'assets/images/2.png',
    'assets/images/3.png',
  ];

  final pressedButton = 0.obs;
  // @override
  // void onInit() {
  //   super.onInit();
  // }

  // @override
  // void onReady() {
  //   super.onReady();
  // }

  // @override
  // void onClose() {
  //   super.onClose();
  // }

  void onPressed(int value) {
    pressedButton.value = value;
  }
}
