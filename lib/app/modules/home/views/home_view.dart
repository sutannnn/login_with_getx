import 'package:absen/app/modules/account/views/account_appbar.dart';
import 'package:absen/app/modules/account/views/account_view.dart';
import 'package:absen/app/modules/home/views/home_appbar.dart';
import 'package:absen/app/modules/home/views/home_body.dart';
import 'package:absen/app/modules/login/controllers/login_controller.dart';
import 'package:absen/app/modules/notif/views/notif_appbar.dart';
import 'package:absen/app/modules/notif/views/notif_view.dart';
import 'package:absen/app/modules/presence/views/presence_appbar.dart';
import 'package:absen/app/modules/presence/views/presence_view.dart';
import 'package:absen/app/modules/task/views/task_appbar.dart';
import 'package:absen/app/modules/task/views/task_view.dart';
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
      const PresenceAppbar(),
      const TaskAppbar(),
      const NotifAppbar(),
      const AccountAppbar(),
    ];

    final bodys = [
      const HomeBody(),
      const PresenceView(),
      const TaskView(),
      const NotifView(),
      const AccountView(),
    ];

    return Obx(
      () => Scaffold(
        appBar: appbars[homeC.pressedButton.value] as PreferredSizeWidget,
        body: bodys[homeC.pressedButton.value],
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.amber,
          unselectedItemColor: Colors.grey,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Image(
                image: const AssetImage('assets/images/home.png'),
                color: (homeC.pressedButton.value == 0)
                    ? Colors.amber
                    : Colors.grey,
              ),
              label: 'Beranda',
            ),
            BottomNavigationBarItem(
              icon: Image(
                image: const AssetImage('assets/images/location.png'),
                color: (homeC.pressedButton.value == 1)
                    ? Colors.amber
                    : Colors.grey,
              ),
              label: 'Presensi',
            ),
            BottomNavigationBarItem(
              icon: Image(
                image: const AssetImage('assets/images/task.png'),
                color: (homeC.pressedButton.value == 2)
                    ? Colors.amber
                    : Colors.grey,
              ),
              label: 'Tugas',
            ),
            BottomNavigationBarItem(
              icon: Image(
                image: const AssetImage('assets/images/notif.png'),
                color: (homeC.pressedButton.value == 3)
                    ? Colors.amber
                    : Colors.grey,
              ),
              label: 'Notifikasi',
            ),
            BottomNavigationBarItem(
              icon: Image(
                image: const AssetImage('assets/images/account.png'),
                color: (homeC.pressedButton.value == 4)
                    ? Colors.amber
                    : Colors.grey,
              ),
              label: 'Akun',
            ),
          ],
          currentIndex: homeC.pressedButton.value,
          onTap: homeC.onPressed,
        ),
      ),
    );
  }
}
