import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Famous Wisata Cianjur',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const DetailScreen(),
    );
  }
}

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
               margin: EdgeInsets.only(top: 16.0),
               child: Text(
                "Famous Wisata Cianjur",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 16.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [
              Column(
                children: [
                  Icon(Icons.calendar_today),
                  SizedBox(
                    height: 8.0,
                  ),
                  Text("Open Everyday"),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.access_time),
                  SizedBox(
                    height: 8.0,
                  ),
                  Text("08.00 - 24.00"),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.monetization_on),
                  SizedBox(
                    height: 8.0,
                  ),
                  Text("Free"),
                ],
              )
            ]),
          ),
          Container(child: Text("В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов. Lorem Ipsum не только успешно пережил без заметных изменений пять веков,")),
        ]),
      ),
    );
  }
}
