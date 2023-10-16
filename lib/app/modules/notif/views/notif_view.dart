import 'package:absen/app/modules/home/controllers/home_controller.dart';
import 'package:absen/app/widgets/CardCustom.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/notif_controller.dart';

class NotifView extends GetView<NotifController> {
  const NotifView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final homeC = Get.put(HomeController());
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Center(
        child: Column(
          children: List.generate(homeC.img.length, (index){
            return CardCustom(title: 'Pengajuan Cuti Diterima!', time: '28 Agustus 2023', img: homeC.img[index]);
          }),
        ),
      ),
    );
  }
}
