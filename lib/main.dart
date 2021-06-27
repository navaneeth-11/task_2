import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
     
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
      home: MyHomePage(title: ' TASK-2'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool selected=false;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
    });
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
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: ListView(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              children: [
                Row(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                       child: 
                       Icon(Icons.menu,size: 25),
                        ),
                     Spacer(flex: 2),

                     Text("XYZ BANK",style: TextStyle(fontStyle: FontStyle.italic,fontWeight:FontWeight.bold),),
                     Spacer(flex: 2),

                    Align(
                      alignment: Alignment.topRight,
                       child: 
                       Icon(Icons.search,size: 25),
                        ),
                  ],
                ),
                
                Container(
                  height: 20,
                  color:Colors.blue[300],
                ),
                SizedBox(height:30),
                 Align(
                  alignment: Alignment.centerLeft,
                   child: 
                   Row(
                    children: [
                      Column(
                      children: [
                        Icon(Icons.home,size:50 ),
                        Icon(Icons.money,size: 50),
                        Icon(Icons.receipt,size:50),
                      ],
                      ),
                       Spacer(flex: 2),
                        Padding(
            padding: EdgeInsets.all(30),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30.0),
              child:
              Image.network("https://financeglad.com/wp-content/uploads/2020/05/ubi-bank-education-loan.jpg",
                                           width: 250,
                                            height: 150,
                                            fit:BoxFit.fill),
                 
            ),
                        ),




                      
                    ],
                  ),
                   
                   ),


                  ElevatedButton(
                    child: Text('PRESS TO GET EDUCATION LOAN'),
                    onPressed: () {
                      setState(() {
                        selected=!selected;
                      });
                      
                     
                     
                     },
                  ),
                     Text("Redirecting...",style:TextStyle(color:selected?Colors.black87:Colors.white10 ,fontSize: 30.0) 
                    ,),
                     Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS8wTf1sf_-3RwdcZ5IbFAFrbOJPTXuy1XQ2A&usqp=CAU",
                                            width: 350,
                                            height: 150,
                                            fit:BoxFit.fill),
                    Container(
                  height: 20,
                  color:Colors.white10,
                ),
                
                      Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRq18l2X_feuHIxX81mpTxPk0rdZSILO2-4aQ&usqp=CAU",
                                            width: 350,
                                            height: 150,
                                            fit:BoxFit.fill),
                 Container(
                  height: 20,
                  color:Colors.white10,
                ),
                
                Image.network("http://kanyakabank.appspot.com/images/banner-3.jpg",
                                            width: 350,
                                            height: 150,
                                            fit:BoxFit.fill),     
                      Text("CONTACT US FROM HERE:",style: TextStyle(fontWeight:FontWeight.bold)),


                Row(
                  children: [
                    
                Expanded(
                  
                  child:
                  Image.network("http://syn.org.au/app/uploads/youtube_logo_detail.png",
                  ), 
                ),
                    Expanded(
                      flex: 2,
                      child:
                      Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-Bl2HkjUi_JlimWMx-1S62Sm7L69vtPtdRjJZq2E-AcEiMcOdcz4BC-31txyOyG-0hso&usqp=CAU",
                      ), 
                    ),
                    Expanded(
                      
                      child:
                      Image.network("https://www.computerhope.com/jargon/i/instagram.jpg",
                      ), 
                    ),
                  ],
                )

                                            
               ],

               
            ),
            
            
            
            

            //Text(
            //  'You have pushed the button this many times:',
           // ),
          //  Text(
           //   '$_counter',
          //    style: Theme.of(context).textTheme.headline4,
          //  ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.help_center),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  row() {}
}
