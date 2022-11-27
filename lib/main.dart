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
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: '큐랩코딩학원 출석체크'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  TextEditingController value1 = TextEditingController();
  TextEditingController value2 = TextEditingController();
  TextEditingController value3 = TextEditingController();
  TextEditingController value4 = TextEditingController();

  String sName = '이현오';
  String sNowDate = '';

  String sNum1 = '';
  String sNum2 = '';
  String sNum3 = '';
  String sNum4 = '';

  void _incrementCounter() {
    setState(() {
      final now = DateTime.now();
      sNowDate = now.toString();
    });
  }

  void _SetNumber(String num){
    setState(() {
      if(value1.value.text.length == 0)
        value1.text = num;
      else if(value2.value.text.length == 0)
        value2.text = num;
      else if(value3.value.text.length == 0)
        value3.text = num;
      else if(value4.value.text.length == 0)
        value4.text = num;
    });
  }

  @override
  Widget build(BuildContext context) {
    _incrementCounter();
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Container(
        child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '$sNowDate',
              style: Theme.of(context).textTheme.headline4,
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(width: 50),
                Expanded(
                  child: TextField(
                    keyboardType: TextInputType.text,
                    controller: value1,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                    style: TextStyle(fontSize: 40,),
                  ),
                ),
                SizedBox(width: 30),
                Expanded(
                    child: TextField(
                      keyboardType: TextInputType.text,
                      controller: value2,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                      style: TextStyle(fontSize: 40),
                    )
                ),
                SizedBox(width: 30),
                Expanded(
                    child: TextField(
                      keyboardType: TextInputType.text,
                      controller: value3,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                      style: TextStyle(fontSize: 40),
                    )
                ),
                SizedBox(width: 30),
                Expanded(
                    child: TextField(
                      keyboardType: TextInputType.text,
                      controller: value4,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                      style: TextStyle(fontSize: 40),
                    )
                ),
                SizedBox(width: 30),
                ElevatedButton(
                    onPressed: (){},
                    child: Text('확인'),
                    style: ElevatedButton.styleFrom(
                        textStyle: const TextStyle(fontSize: 50)
                    ),
                ),
                SizedBox(width: 50),
              ],
            ),
            SizedBox(height: 50),
            Row(
              children: [
                SizedBox(width: 50),
                OutlinedButton(
                  onPressed: () {
                    _SetNumber("1");
                  },
                  child: Text("1"),
                  style: OutlinedButton.styleFrom(
                    fixedSize: Size(250, 200),
                    primary: Colors.blue,
                    textStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 50,
                    ),
                  ),
                ),
                SizedBox(width: 50),
                OutlinedButton(
                  onPressed: () {
                    _SetNumber("2");
                  },
                  child: Text("2"),
                  style: OutlinedButton.styleFrom(
                    fixedSize: Size(250, 200),
                    primary: Colors.blue,
                    textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 50,
                    ),
                  ),
                ),
                SizedBox(width: 50),
                OutlinedButton(
                  onPressed: () {
                    _SetNumber("3");
                  },
                  child: Text("3"),
                  style: OutlinedButton.styleFrom(
                    fixedSize: Size(250, 200),
                    primary: Colors.blue,
                    textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 50,
                    ),
                  ),
                ),
                SizedBox(width: 50),
              ],
            ),
            SizedBox(height: 50),
            Row(
              children: [
                SizedBox(width: 50),
                OutlinedButton(
                  onPressed: () {
                    _SetNumber("4");
                  },
                  child: Text("4"),
                  style: OutlinedButton.styleFrom(
                    fixedSize: Size(250, 200),
                    primary: Colors.blue,
                    textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 50,
                    ),
                  ),
                ),
                SizedBox(width: 50),
                OutlinedButton(
                  onPressed: () {
                    _SetNumber("5");
                  },
                  child: Text("5"),
                  style: OutlinedButton.styleFrom(
                    fixedSize: Size(250, 200),
                    primary: Colors.blue,
                    textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 50,
                    ),
                  ),
                ),
                SizedBox(width: 50),
                OutlinedButton(
                  onPressed: () {
                    _SetNumber("6");
                  },
                  child: Text("6"),
                  style: OutlinedButton.styleFrom(
                    fixedSize: Size(250, 200),
                    primary: Colors.blue,
                    textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 50,
                    ),
                  ),
                ),
                SizedBox(width: 50),
              ],
            ),
            SizedBox(height: 50),
            Row(
              children: [
                SizedBox(width: 50),
                OutlinedButton(
                  onPressed: () {
                    _SetNumber("7");
                  },
                  child: Text("7"),
                  style: OutlinedButton.styleFrom(
                    fixedSize: Size(250, 200),
                    primary: Colors.blue,
                    textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 50,
                    ),
                  ),
                ),
                SizedBox(width: 50),
                OutlinedButton(
                  onPressed: () {
                    _SetNumber("8");
                  },
                  child: Text("8"),
                  style: OutlinedButton.styleFrom(
                    fixedSize: Size(250, 200),
                    primary: Colors.blue,
                    textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 50,
                    ),
                  ),
                ),
                SizedBox(width: 50),
                OutlinedButton(
                  onPressed: () {
                    _SetNumber("9");
                  },
                  child: Text("9"),
                  style: OutlinedButton.styleFrom(
                    fixedSize: Size(250, 200),
                    primary: Colors.blue,
                    textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 50,
                    ),
                  ),
                ),
                SizedBox(width: 50),
              ],
            ),
            SizedBox(height: 50),
            Row(
              children: [
                SizedBox(width: 50),
                OutlinedButton(
                  onPressed: () {
                    setState(() {
                      value1.text = "";
                      value2.text = "";
                      value3.text = "";
                      value4.text = "";
                    });
                  },
                  child: Text("초기화"),
                  style: OutlinedButton.styleFrom(
                    fixedSize: Size(250, 200),
                    primary: Colors.blue,
                    textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 50,
                    ),
                  ),
                ),
                SizedBox(width: 50),
                OutlinedButton(
                  onPressed: () {
                    _SetNumber("0");
                  },
                  child: Text("0"),
                  style: OutlinedButton.styleFrom(
                    fixedSize: Size(250, 200),
                    primary: Colors.blue,
                    textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 50,
                    ),
                  ),
                ),
                SizedBox(width: 50),
                OutlinedButton(
                  onPressed: () {
                    setState(() {
                      if(value4.value.text.length > 0)
                        value4.text = "";
                      else if(value3.value.text.length > 0)
                        value3.text = "";
                      else if(value2.value.text.length > 0)
                        value2.text = "";
                      else if(value1.value.text.length > 0)
                        value1.text = "";
                    });
                  },
                  child: Text("←"),
                  style: OutlinedButton.styleFrom(
                    fixedSize: Size(250, 200),
                    primary: Colors.blue,
                    textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 50,
                    ),
                  ),
                ),
                SizedBox(width: 50),
              ],
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
