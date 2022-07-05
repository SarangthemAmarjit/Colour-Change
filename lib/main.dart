import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Amarjit App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Testwidget(),
    );
  }
}

class Testwidget extends StatefulWidget {
  const Testwidget({Key? key}) : super(key: key);

  @override
  State<Testwidget> createState() => _TestwidgetState();
}

class _TestwidgetState extends State<Testwidget> {
  int index = 0;
  Image img = Image.asset(
    'assets/images/1.jpg',
    width: 200,
    height: 200,
    fit: BoxFit.fill,
  );
  List<Image> img2 = [
    Image.asset(
      'assets/images/2.jpg',
      width: 200,
      height: 200,
      fit: BoxFit.fill,
    ),
    Image.asset(
      'assets/images/3.jpg',
      width: 200,
      height: 200,
      fit: BoxFit.fill,
    ),
    Image.asset(
      'assets/images/4.jpg',
      width: 200,
      height: 200,
      fit: BoxFit.fill,
    ),
    Image.asset(
      'assets/images/5.jpg',
      width: 200,
      height: 200,
      fit: BoxFit.fill,
    ),
    Image.asset(
      'assets/images/6.jpg',
      width: 200,
      height: 200,
      fit: BoxFit.fill,
    ),
    Image.asset(
      'assets/images/7.jpg',
      width: 200,
      height: 200,
      fit: BoxFit.fill,
    ),
    Image.asset(
      'assets/images/8.jpg',
      width: 200,
      height: 200,
      fit: BoxFit.fill,
    ),
    Image.asset(
      'assets/images/9.jpg',
      width: 200,
      height: 200,
      fit: BoxFit.fill,
    ),
    Image.asset(
      'assets/images/10.jpg',
      width: 200,
      height: 200,
      fit: BoxFit.fill,
    ),
  ];
  Color color = Colors.yellow;
  String str = 'WELCOME TO FLUTTER';
  void change() {
    setState(() {
      str = " THE IMAGES ARE LOADED ";
      //img = img2[index % img2.length];
      img = img2[index % img2.length];
      index++;
    });
  }

  void change2() {
    setState(() {
      //img = img2[index % img2.length];
      img = img2[index % img2.length];
      index--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("SCENARY COLLECTION")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              child: Center(
                child: Text(str,
                    style: const TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontStyle: FontStyle.italic,
                        fontFamily: 'Aerial')),
              ),
              width: 400,
              height: 50,
              color: color,
              margin: const EdgeInsets.all(20),
            ),
            img,
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.lime),
                        onPressed: (change2),
                        child: const Text(
                          'PREV',
                          style: TextStyle(color: Colors.black),
                        )),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.lime),
                        onPressed: change,
                        child: const Text(
                          'NEXT',
                          style: TextStyle(color: Colors.black),
                        )),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.red),
                    onPressed: () {
                      setState(() {
                        color = Colors.red;
                      });
                    },
                    child: const Text('RED')),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.blue),
                    onPressed: () {
                      setState(() {
                        color = Colors.blue;
                      });
                    },
                    child: const Text('BLUE')),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.lightGreen),
                    onPressed: () {
                      setState(() {
                        color = Colors.lightGreen;
                      });
                    },
                    child: const Text('GREEN')),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.orange),
                    onPressed: () {
                      setState(() {
                        color = Colors.orange;
                      });
                    },
                    child: const Text('ORANGE'))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
