import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sampleappwithgetx/controller/favoriDay_Controller.dart';

class FavoriPage extends StatelessWidget {
  FavoriPage({Key? key}) : super(key: key);

//If it is initialized before you are able to use this controller by usinf .find()
  final FavoriDayController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    var _favoriDays = controller.getFavoriDays;
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Obx(
            () => ListView.builder(
              itemCount: _favoriDays.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(_favoriDays[index].dayName),
                  trailing: IconButton(
                    icon: Icon(Icons.remove),
                    onPressed: () {
                      controller.removeFavoriDays(_favoriDays[index]);
                    },
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
