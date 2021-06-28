import 'package:drawer_event/src/page/home.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);
  static final GlobalKey<ScaffoldState> drawerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: drawerKey,
      drawer: Container(
        width: MediaQuery.of(context).size.width * 0.8,
        color: Colors.white,
        child: Column(
          children: [Container(height: 200, color: Colors.blue)],
        ),
      ),
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            drawerKey.currentState!.openDrawer();
          },
          child: Icon(Icons.ac_unit_sharp),
        ),
        title: Text('drawer event'),
      ),
      body: Home(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          drawerKey.currentState!.openDrawer();
        },
        child: const Icon(Icons.open_in_browser),
      ),
    );
  }
}
