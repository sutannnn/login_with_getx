import 'package:absen/app/modules/home/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  //TODO: Implement LoginController
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  // final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  // Simulasi data pengguna lokal (gantilah dengan data sebenarnya jika ada)
  final List<Map<String, String>> localUserData = [
    {"email": "user1@example.com", "password": "password1"},
    {"email": "user2@example.com", "password": "password2"},
    // Tambahkan data pengguna lainnya di sini
  ];
  Future<void> loginWithEmail() async {
    try {
      final enteredEmail = emailController.text.trim();
      final enteredPassword = passwordController.text;

      // Cari pengguna dengan email yang cocok di data lokal
      final bool userExists = localUserData.any(
        (userData) =>
            userData["email"] == enteredEmail &&
            userData["password"] == enteredPassword,
      );

      // ignore: unnecessary_null_comparison
      if (userExists == true) {
        // Simpan token di SharedPreferences
        // final SharedPreferences prefs = await _prefs;
        // prefs.setString('token', token);

        emailController.clear();
        passwordController.clear();
        // Masuk ke halaman beranda jika email dan kata sandi cocok
        Get.off(const HomeView());
      } else {
        // Tampilkan pesan kesalahan jika email atau kata sandi tidak cocok
        throw "Email atau kata sandi salah";
      }
    } catch (e) {
      Get.back();
      showDialog(
        context: Get.context!,
        builder: (context) {
          return SimpleDialog(
            title: const Text('Error'),
            contentPadding: const EdgeInsets.all(20),
            children: [Text(e.toString())],
          );
        },
      );
    }
  }

  var isVisible = false.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void changeVisibility(){
    isVisible.value = !isVisible.value;
  } 
}
