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
        primarySwatch: Colors.red,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("MyApp"),
        ),
        body: ListView(
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(10.0),
                      child: const Text(
                        "BERITA TERBARU",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(10.0),
                      child: const Text(
                        "PERTANDINGAN HARI INI",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  width: 3,
                ),
              ),
              padding: const EdgeInsets.all(0.0),
              child: Column(
                children: [
                  Container(
                    height: 250.0,
                    width: 350.0,
                    padding: const EdgeInsets.all(0.0),
                    child:
                        Image.asset('assets/img/sergio.jpg', fit: BoxFit.fill),
                  ),
                  Container(
                    decoration: BoxDecoration(border: Border.all(width: 1)),
                    padding: const EdgeInsets.all(10.0),
                    child: const Text(
                      "Kapten Real Madrid Akan Bergabung ke Parist Saint German",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.all(10.0),
                    decoration: const BoxDecoration(
                      color: Color(0xffFFC14F),
                    ),
                    child: const Text(
                      "Transfer",
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  width: 3,
                  color: Colors.green,
                ),
              ),
              padding: const EdgeInsets.all(0.0),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 3,
                        color: Colors.purple,
                      ),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 150.0,
                            width: 200.0,
                            padding: const EdgeInsets.all(0.0),
                            child: Image.asset('assets/img/image1.jpg',
                                fit: BoxFit.fill),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.all(10.0),
                            child: const Text(
                              "Pemain Arsenal Merebut Bola dari Pemain Tothenham",
                              textAlign: TextAlign.justify,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.all(10.0),
                    decoration: const BoxDecoration(
                      color: Colors.transparent,
                    ),
                    child: const Text(
                      "Stadion Emirates, August 17,2022",
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        icon: const Icon(Icons.favorite),
        backgroundColor: Colors.pink,
        label: const Text('Suka'),
      ),
    );
  }
}
