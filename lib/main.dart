import 'package:cubic_conic_project/cubic_cipper.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff230242),
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 60,
            child: Stack(
              children: <Widget>[
                ClipPath(
                  clipper: SimpleClipper(),
                  child: Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Colors.deepPurpleAccent, Colors.red],
                          begin: FractionalOffset(0.0, 0.0),
                          end: FractionalOffset(1.0, 0.0),
                          stops: [0.6, 1.0],
                          tileMode: TileMode.clamp),
                    ),
                    height: 400,
                  ),
                ),
                Column(
                  children: const <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 32, bottom: 8.0),
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: ClipOval(
                            child: Image(
                          width: 150,
                          height: 150,
                          image: AssetImage('assets/fatima.jpg'),
                          fit: BoxFit.cover,
                        )),
                      ),
                    ),
                    Text(
                      "Hoorain Fatima",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 26,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            flex: 40,
            child: ClipPath(
              clipper: CurveClipper(),
              child: Image.network(
                "https://bit.ly/2nirIxg",
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
