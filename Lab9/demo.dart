import 'package:flutter/material.dart';
import 'Page1.dart';
import 'home.dart';

class DemoFinal extends StatelessWidget {
  const DemoFinal({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(tabs: [
            Tab(
              text: "Home",
            ),
            Tab(
              text: "Page1",
            ),
            Text("page2")
          ]),
          actions: [IconButton(onPressed: () {
            showDialog(context: context, builder: (context) {
              return AlertDialog(
                title: Text("Are you sure?"),
                content: Text("Content"),
                actions: [
                  ElevatedButton(onPressed: () {}, child: Text("Ok")),
                  ElevatedButton(onPressed: () {
                    Navigator.of(context).pop();
                  }, child: Text("Cancel"))
                ],
              );
            });
          }, icon: Icon(Icons.logout))
          ],
        ),
        body: TabBarView(children: [Home(), Page1(), Center(child: Text("Page2",style: TextStyle(fontSize: 50),))]),
      ),
    );
  }
}
