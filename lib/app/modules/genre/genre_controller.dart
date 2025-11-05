import 'package:get/get.dart';

class GenreController extends GetxController {
  final List<Map<String, dynamic>> genres = [
    {'name': 'Fiksi', 'desc': 'Cerita imajinatif.', 'icon': 0xe1f9},
    {'name': 'Non-Fiksi', 'desc': 'Berdasarkan fakta.', 'icon': 0xe3e0},
    {'name': 'Sains', 'desc': 'Pengetahuan alam.', 'icon': 0xe54a},
    {'name': 'Sejarah', 'desc': 'Peristiwa masa lalu.', 'icon': 0xe31d},
    {'name': 'Teknologi', 'desc': 'Aplikasi sains.', 'icon': 0xe1b1},
    {'name': 'Biografi', 'desc': 'Kisah hidup.', 'icon': 0xe491},
  ];
}