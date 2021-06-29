import 'package:sampleappwithgetx/data/mockdata.dart';
import 'package:sampleappwithgetx/data/models/day.dart';
import 'package:sampleappwithgetx/services/dayservice/iday_service.dart';

class DayService implements IDayService {
  @override
  Future<List<Day>> getDays() {
    return Future.delayed(Duration(seconds: 3), () => getMockData());
  }
}
