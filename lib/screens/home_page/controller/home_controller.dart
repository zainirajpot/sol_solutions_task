import 'package:get/get.dart';

class HomeController extends GetxController {
  var isFavoritedList = <bool>[].obs;

  void toggleFavorite(int index) {
    isFavoritedList[index] = !isFavoritedList[index];
  }

  void initializeFavorites(int length) {
    isFavoritedList.value = List<bool>.filled(length, false);
  }
}