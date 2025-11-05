import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../routes/app_pages.dart';

class MainBottomBar extends StatelessWidget {
  final int currentIndex;

  const MainBottomBar({Key? key, required this.currentIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.category),
          label: 'Genre',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.business),
          label: 'Tentang',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.contacts),
          label: 'Kontak',
        ),
      ],
      onTap: (index) {
        switch (index) {
          case 0:
            Get.offAllNamed(Routes.HOME);
            break;
          case 1:
            Get.offAllNamed(Routes.GENRE);
            break;
          case 2:
            Get.offAllNamed(Routes.ABOUT);
            break;
          case 3:
            Get.offAllNamed(Routes.CONTACT);
            break;
        }
      },
    );
  }
}