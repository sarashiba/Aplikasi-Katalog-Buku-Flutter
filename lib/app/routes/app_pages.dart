import 'package:get/get.dart';
import '../modules/about/about_binding.dart';
import '../modules/about/about_view.dart';
import '../modules/contact/contact_binding.dart';
import '../modules/contact/contact_view.dart';
import '../modules/detail/detail_binding.dart';
import '../modules/detail/detail_view.dart';
import '../modules/genre/genre_binding.dart';
import '../modules/genre/genre_view.dart';
import '../modules/home/home_binding.dart';
import '../modules/home/home_view.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: Routes.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.DETAIL,
      page: () => DetailView(),
      binding: DetailBinding(),
    ),
    GetPage(
      name: Routes.GENRE,
      page: () => GenreView(),
      binding: GenreBinding(),
    ),
    GetPage(
      name: Routes.ABOUT,
      page: () => AboutView(),
      binding: AboutBinding(),
    ),
    GetPage(
      name: Routes.CONTACT,
      page: () => ContactView(),
      binding: ContactBinding(),
    ),
  ];
}