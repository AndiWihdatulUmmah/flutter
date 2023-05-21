import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List<Tab> myTab = [
    Tab(
      text: "Photos",
      icon: Icon(Icons.add_a_photo),
    ),
    Tab(
      text: "Food",
      icon: Icon(Icons.food_bank),
    ),
    Tab(
      text: "Caffe",
      icon: Icon(Icons.coffee),
    ),
  ];
@override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: myTab.length,
        child: Scaffold(
          backgroundColor: Colors.grey,
          appBar: AppBar(
          title: Text ("My First App Layout Flutter"),
          centerTitle: true,
          bottom: TabBar(
            unselectedLabelColor: Colors.blueGrey,
            indicator: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.white,
                  width: 5,
                ), 
              ),
            ),
            tabs: myTab, ),
            ),
          body: TabBarView(
            children:[
             Center(
              child: Container(
                width: 500,
                height: 350,
                color: Colors.blueAccent,
                child: Image(
                  fit: BoxFit.cover,
                  image: AssetImage ("images/camera.jpg"),
             ),
           ),
            ),
            Center(
                child: Container(
                width: 500,
                height: 350,
                color: Colors.blueAccent,
                child: Image(
                  fit: BoxFit.cover,
                  image: AssetImage ("images/food.jpg"),
             ),
           ),
            ),
            Center(
                child: Container(
                width: 500,
                height: 350,
                color: Colors.blueAccent,
                child: Image(
                  fit: BoxFit.cover,
                  image: AssetImage ("images/coffe.jpg"),
             ),
           ),
            ),
            ],
          ),
        ),
      ),
    );
  }
}

