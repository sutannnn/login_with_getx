import 'package:absen/app/modules/home/views/home_appbar.dart';
import 'package:absen/app/modules/home/views/home_body.dart';
import 'package:absen/app/modules/login/controllers/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(LoginController());
    final homeC = Get.put(HomeController());

    final appbars = [
      const HomeAppbar(),
    ];

    final bodys = [
      const HomeBody(),
    ];

    return Scaffold(
      appBar: appbars[0],
      body: bodys[0],
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.amber,
          unselectedItemColor: Colors.grey,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Obx(
                () => Icon(
                  (homeC.pressedButton.value == 0)
                      ? Icons.home
                      : Icons.home_outlined,
                  color: Colors.black,
                ),
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Obx(
                () => Icon(
                  (homeC.pressedButton.value == 1)
                      ? Icons.store
                      : Icons.store_outlined,
                  color: Colors.black,
                ),
              ),
              label: 'Toko',
            ),
            BottomNavigationBarItem(
              icon: Obx(
                () => Icon(
                  (homeC.pressedButton.value == 2)
                      ? Icons.article
                      : Icons.article_outlined,
                  color: Colors.black,
                ),
              ),
              label: 'Artikel',
            ),
            BottomNavigationBarItem(
              icon: Obx(
                () => Icon(
                  (homeC.pressedButton.value == 3)
                      ? Icons.person
                      : Icons.person_outline,
                  color: Colors.black,
                ),
              ),
              label: 'Profile',
            ),
          ],
          currentIndex: homeC.pressedButton.value,
          onTap: homeC.onPressed,
        ),
    );
  }
}
