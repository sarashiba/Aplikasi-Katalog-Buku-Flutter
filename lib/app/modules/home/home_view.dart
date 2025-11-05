import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../widgets/main_bottom_bar.dart';
import 'home_controller.dart';
import 'widgets/book_list_item.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Katalog Buku'),
      ),
      body: Obx(
        () => ListView.builder(
          itemCount: controller.bookList.length,
          itemBuilder: (context, index) {
            final book = controller.bookList[index];
            return BookListItem(
              book: book,
              onTap: () => controller.goToDetail(book),
            );
          },
        ),
      ),
      bottomNavigationBar: MainBottomBar(currentIndex: 0),
    );
  }
}