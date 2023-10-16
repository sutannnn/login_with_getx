import 'package:absen/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeAppbar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  const HomeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    final homeC = Get.put(HomeController());
    return AppBar(
      title: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Halo ${homeC.name},',
            style: const TextStyle(fontSize: 20),
          ),
          const Text(
            'Semangat kerjanya!',
            style: TextStyle(color: Colors.amber, fontSize: 14),
          )
        ],
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
      actions: const [
        CircleAvatar(
          backgroundImage: AssetImage('assets/images/profile.png'),
        ),
        SizedBox(
          width: 20,
        ),
        // IconButton(
        //   onPressed: () {
        //     Get.offAll(const LoginView());
        //     // Get.back();
        //   },
        //   icon: const Icon(Icons.logout_outlined),
        // )
      ],
    );
  }
}
