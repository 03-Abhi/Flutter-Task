import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Homepage());
  }
}

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  String head = "Head";
  String tail = "Tail";
  bool a = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Turn The Coin"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              a ? head : tail,
              style: TextStyle(fontSize: 35 , fontWeight: FontWeight.bold),
            ),
            Image.asset(
              a ? "Images/Head.jpeg" : "Images/Tail.png",
            ),


            ElevatedButton(
              onPressed: () {
                a = !a;
                print(a);
                setState(() {});
              },
              child: Text("Turn"),
            )
          ],
        ),
      ),
    );
  }
}