import 'package:get/get.dart';
import '../../data/models/book_model.dart';

class DetailController extends GetxController {
  late final Book book;

  @override
  void onInit() {
    super.onInit();
    if (Get.arguments != null && Get.arguments is Book) {
      book = Get.arguments as Book;
    } else {
      Get.back();
    }
  }
}