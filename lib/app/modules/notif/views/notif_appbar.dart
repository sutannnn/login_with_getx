import 'package:flutter/material.dart';

class NotifAppbar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 50);
  const NotifAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: const Icon(Icons.chevron_left),
      leadingWidth: 50,
      title: const Text('Notifikasi'),
      bottom: const PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: DefaultTabController(
          length: 2,
          child: TabBar(
            indicatorColor: Colors.orange,
            indicatorWeight: 3,
            indicatorPadding: EdgeInsets.only(bottom: 10),
            tabs: [
              Tab(
                text: 'Riwayat',
              ),
              Tab(
                text: 'Perlu Persetujuan',
              )
            ],
          ),
        ),
      ),
    );
  }
}
