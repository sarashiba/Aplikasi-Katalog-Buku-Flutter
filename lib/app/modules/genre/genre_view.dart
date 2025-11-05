import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../widgets/main_bottom_bar.dart';
import 'genre_controller.dart';

class GenreView extends GetView<GenreController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Genre Buku'),
      ),
      body: ListView.builder(
        itemCount: controller.genres.length,
        itemBuilder: (context, index) {
          final genre = controller.genres[index];
          return Card(
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: ListTile(
              leading: Icon(
                IconData(genre['icon'], fontFamily: 'MaterialIcons'),
              ),
              title: Text(genre['name']),
              subtitle: Text(genre['desc']),
            ),
          );
        },
      ),
      bottomNavigationBar: MainBottomBar(currentIndex: 1),
    );
  }
}