import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../widgets/main_bottom_bar.dart';
import 'contact_controller.dart';

class ContactView extends GetView<ContactController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kontak Kami'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hubungi Kami',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            SizedBox(height: 8),
            Text(
              'Jika Anda memiliki pertanyaan atau masukan, silakan hubungi kami.',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            SizedBox(height: 24),
            Card(
              child: ListTile(
                leading: Icon(Icons.email),
                title: Text('Email'),
                subtitle: Text('info@perpustakaan.com'),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.phone),
                title: Text('Telepon'),
                subtitle: Text('+62 123 456 789'),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.location_on),
                title: Text('Alamat'),
                subtitle: Text('Jl. Merdeka No. 1, Jakarta, Indonesia'),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: MainBottomBar(currentIndex: 3),
    );
  }
}