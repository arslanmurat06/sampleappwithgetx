import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sampleappwithgetx/controller/favoriDay_Controller.dart';
import 'package:sampleappwithgetx/data/models/day.dart';
import 'package:sampleappwithgetx/pages/favoritepage.dart';
import 'package:sampleappwithgetx/services/dayservice/day_service.dart';
import 'package:sampleappwithgetx/services/dayservice/iday_service.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  //Put this controller available in all the child routes .
  //You will able to get the same instance from anywhere in the app.
  final FavoriDayController controller = Get.put(FavoriDayController());

  final DayService _dayService = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              child: Expanded(
                flex: 4,
                child: FutureBuilder<List<Day>>(
                    future: _dayService.getDays(),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        List<Day> _days = snapshot.data as List<Day>;
                        return ListView.builder(
                          itemCount: _days.length,
                          itemBuilder: (context, index) {
                            return ListTile(
                              title: Text(_days[index].dayName),
                              trailing: IconButton(
                                icon: Icon(Icons.add),
                                onPressed: () {
                                  controller.addFavoriDays(_days[index]);
                                },
                              ),
                            );
                          },
                        );
                      } else
                        return Center(child: CircularProgressIndicator());
                    }),
              ),
            ),
            Expanded(
              flex: 1,
              child: ElevatedButton(
                child: Text("FavoriPage"),
                onPressed: () => Get.to(FavoriPage()),
              ),
            )
          ],
        ),
      ),
    );
  }
}
