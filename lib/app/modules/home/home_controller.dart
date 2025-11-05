import 'package:get/get.dart';
import '../../data/models/book_model.dart';
import '../../routes/app_pages.dart';

class HomeController extends GetxController {
  final RxList<Book> bookList = <Book>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchBooks();
  }

  void fetchBooks() {
    var dummyBooks = [
      Book(
        id: '1',
        title: 'Flutter Hebat',
        author: 'John Doe',
        description: 'Penjelasan mendalam mengenai Flutter dan GetX untuk membangun aplikasi cross-platform yang menakjubkan.',
        imageUrl: 'https://picsum.photos/id/10/200/300',
      ),
      Book(
        id: '2',
        title: 'Dart untuk Pemula',
        author: 'Jane Smith',
        description: 'Belajar Dart dari dasar sampai mahir. Cocok untuk pemula yang ingin masuk ke dunia Flutter.',
        imageUrl: 'https://picsum.photos/id/20/200/300',
      ),
      Book(
        id: '3',
        title: 'Manajemen State GetX',
        author: 'Alex Johnson',
        description: 'Kuasai GetX untuk manajemen state yang efisien, reaktif, dan mudah dipelihara.',
        imageUrl: 'https://picsum.photos/id/30/200/300',
      ),
    ];
    bookList.assignAll(dummyBooks);
  }

  void goToDetail(Book book) {
    Get.toNamed(Routes.DETAIL, arguments: book);
  }
}