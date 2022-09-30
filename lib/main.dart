import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


import 'package:whatsapp/page.dart/splashpage.dart';

void main() => runApp(

    // DevicePreview(
    //   enabled: !kReleaseMode,
    //   builder: (context) =>
    MyApp()
    // ),
    );

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Splashpage(),
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
  int _dicres = 100;

  void _dicrementCounter() {
    setState(() {
      _dicres--;
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
              '$_dicres',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: _dicrementCounter,
          tooltip: 'dicrement',
          child: const Text(
              "Dicres")), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
