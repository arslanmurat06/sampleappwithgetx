import 'package:sampleappwithgetx/data/models/day.dart';

abstract class IDayService {
  Future<List<Day>> getDays();
}
