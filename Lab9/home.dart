import 'package:flutter/material.dart';
import 'Page1.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "This is Home page",
              style: TextStyle(fontSize: 75, color: Colors.blue),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Page1(),
                  ));
                },
                child: Text("Click here to go Page1",style: TextStyle(fontSize: 20,color: Colors.orange),),)
          ],
        ),
      ),
    );
  }
}
