import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../widgets/main_bottom_bar.dart';
import 'about_controller.dart';

class AboutView extends GetView<AboutController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tentang Perpustakaan'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.business,
                size: 100,
                color: Theme.of(context).primaryColor,
              ),
              SizedBox(height: 24),
              Text(
                'Perpustakaan Digital',
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 16),
              Text(
                'Ini adalah deskripsi singkat mengenai perpustakaan digital kami. Kami berdedikasi untuk menyediakan akses mudah ke ribuan koleksi buku digital dari berbagai genre untuk semua kalangan.',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: MainBottomBar(currentIndex: 2),
    );
  }
}