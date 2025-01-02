import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Page1", style: TextStyle(fontSize: 25,),)),
      ),
      body: Center(child: Column(
        children: [
          Image.network("https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg?cs=srgb&dl=pexels-anjana-c-169994-674010.jpg&fm=jpg",height: 450,),
          SizedBox(height: 20,),
          ElevatedButton(onPressed: (){
            Navigator.of(context).pop();
          }, child: Text("Back"))
        ],
      )),
    );
  }
}
