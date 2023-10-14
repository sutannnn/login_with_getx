import 'dart:ffi';
import 'package:absen/app/modules/login/controllers/login_controller.dart';
import 'package:absen/app/modules/login/views/login_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';
import 'package:percent_indicator/percent_indicator.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(LoginController());
    final homeC = Get.put(HomeController());
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
    return Scaffold(
      appBar: AppBar(
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
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 20, left: 20, top: 20),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Jangan lewatkan kehadiran hari ini!'),
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.calendar_month_outlined,
                        color: Colors.amber,
                      ),
                      Text('24 April 2023'),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.access_time,
                        color: Colors.amber,
                      ),
                      Text('24 April 2023'),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                height: 70,
                padding: const EdgeInsets.only(
                    right: 20, left: 20, top: 10, bottom: 10),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    color: Colors.orange),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(children: [
                      Icon(
                        Icons.login,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Absen Masuk',
                        style: TextStyle(color: Colors.white),
                      )
                    ]),
                    VerticalDivider(
                      thickness: 1.5,
                      color: Colors.white,
                    ),
                    Row(children: [
                      Icon(
                        Icons.logout,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Absen Keluar',
                        style: TextStyle(color: Colors.white),
                      )
                    ]),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Tidak Hadir',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Lihat Semua',
                      style: TextStyle(color: Colors.orange),
                    ),
                  )
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    child: Text('RA'),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Pengumuman',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Lihat Semua',
                      style: TextStyle(color: Colors.orange),
                    ),
                  )
                ],
              ),
              Column(
                children: List.generate(3, (index) {
                  return Card(
                    elevation: 4,
                    child: Container(
                      height: 70,
                      width: double.infinity,
                      padding: const EdgeInsets.only(right: 10, left: 10),
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(title[index]),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                time[index],
                                style: const TextStyle(color: Colors.black38),
                              ),
                            ],
                          ),
                          Image(image: AssetImage(img[index])),
                        ],
                      ),
                    ),
                  );
                }),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Tugas Anda',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Lihat Semua',
                      style: TextStyle(color: Colors.orange),
                    ),
                  )
                ],
              ),
              Card(
                elevation: 4,
                child: Container(
                  height: 140,
                  width: double.infinity,
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Proyek Absensi',
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                          Icon(
                            Icons.circle,
                            color: Color.fromRGBO(237, 101, 98, 1),
                            size: 16,
                          )
                        ],
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '13 Oktober 2023',
                            style: TextStyle(color: Colors.black38),
                          ),
                          Text(
                            '12.00 WIB',
                            style: TextStyle(color: Colors.black38),
                          ),
                        ],
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image(image: AssetImage('assets/images/proyek.png'))
                        ],
                      ),
                      Center(
                        child: LinearPercentIndicator(
                          width: 270,
                          lineHeight: 10.0,
                          percent: 0.3,
                          trailing: const Text('30%'),
                          barRadius: const Radius.circular(10),
                          backgroundColor: Colors.grey,
                          progressColor: const Color.fromRGBO(237, 101, 98, 1),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
