import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/presence_controller.dart';

class PresenceView extends GetView<PresenceController> {
  const PresenceView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20),
      child: Center(
        child: Text('Presensi', style: TextStyle(fontSize: 30),),
      ),
    );
  }
}
