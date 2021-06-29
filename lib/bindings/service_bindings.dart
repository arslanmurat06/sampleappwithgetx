import 'package:get/get.dart';
import 'package:sampleappwithgetx/services/dayservice/day_service.dart';

class ServiceBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DayService>(() => DayService());
  }
}
