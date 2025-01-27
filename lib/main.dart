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
      title: 'Week 4 - Samples',
      theme: ThemeData(
        // This is the theme of your application.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Week 4 - Alert Dialog'),
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

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void _processOK(BuildContext context){
    Navigator.of(context).pop();
    var snackBar = SnackBar(content: Text('OK Clicked'));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void _processCancel(BuildContext context){
    Navigator.of(context).pop();
    var snackBar = SnackBar(content: Text('Cancel Clicked'));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  AlertDialog displayDialog(BuildContext context) {

    return AlertDialog(
      title: const Text('AlertDialog'),
      content: const Text('Press OK or Cancel to continue ...'),
      actions: <Widget>[
        TextButton(
          onPressed: ()  {
            _processCancel(context);
          },
          child: const Text('Cancel'),
        ),
        TextButton(
          onPressed: () {
            _processOK(context);
          },
          child: Container(
            color: Colors.blueAccent,
            padding: const EdgeInsets.all(14),
            child: const Text("OK"),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                onPressed: () =>
                    showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => displayDialog(context)
                    ),
                child: Text ('Click Me',
                  style: TextStyle(fontSize: 30, color: Colors.blueAccent),
                ),
              ), // This trailing comma makes auto-formatting nicer for build methods.
            ),
          ],
        ),
        //
      ),
    );
  }

}


