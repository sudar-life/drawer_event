import 'package:drawer_event/src/app.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          App.drawerKey.currentState!.openDrawer();
        },
        child: Text("Drawer Open"),
      ),
    );
  }
}
