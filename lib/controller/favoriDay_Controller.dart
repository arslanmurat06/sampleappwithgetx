import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:sampleappwithgetx/data/models/day.dart';
import 'package:get/get.dart';

class FavoriDayController extends GetxController {
  RxList<Day> _favoriDays = RxList<Day>();

  List<Day> get getFavoriDays => _favoriDays;

  addFavoriDays(Day favoridDay) {
    if (!_favoriDays.any((d) => d.dayName == favoridDay.dayName)) {
      _favoriDays.add(favoridDay);
      update();
    }
    Get.snackbar(
      "Success",
      "Day added succesfully",
    );
  }

  removeFavoriDays(Day favoridDay) {
    if (_favoriDays.any((d) => d.dayName == favoridDay.dayName)) {
      _favoriDays.removeWhere((d) => d.dayName == favoridDay.dayName);
      update();
    }
    Get.snackbar("Success", "Day removed succesfully",
        snackPosition: SnackPosition.BOTTOM);
  }
}
