

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
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'MyApp'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Column(
        // padding: EdgeInsets.all(16.0),
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Text("BERITA TERBARU"),
                Text("PERTANDINGAN HARI INI")
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(15.0),
            width: double.infinity,
            child: Column(
              children: <Widget> [
                Image(image: NetworkImage('https://pbs.twimg.com/media/Fb-cfGAX0AELhkR?format=jpg&name=medium')),
                Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
                Text(
                  'Real Madrid Menjuarai Liga Champions Tahun 2001/2002',
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 10)),
                Container(
                  color: Colors.purple,
                  width: double.infinity,
                  height: 30,
                  alignment: Alignment.center,
                  child: Text(
                    'Update',
                    style: const TextStyle(fontSize: 15, color: Colors.white),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
          Container(
            
            padding: EdgeInsets.all(15.0),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  child: Row(
                    children: const [
                      Expanded(
                        flex: 3,
                        child: Image(
                          image: NetworkImage('https://pbs.twimg.com/media/FcNZ8i4XEAA1rA8?format=jpg&name=large')
                        )
                      ),
                      Expanded(
                        flex: 4,
                        child: Text("Tengah Berduka Pasca-Wafatnya Ratu Elizabeth II, Pertandingan Liga Inggris Bakal Ditunda? ", textAlign: TextAlign.center,)
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB( 10, 10, 10, 10),
                  width: double.infinity,
                  height: 40,
                  color: Color.fromARGB(58, 167, 167, 167),
                  child: Text("9 September 2022"),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
