import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider_library_demo/LevelScreen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool levelShow = false;
  CrossFadeState state = CrossFadeState.showFirst;
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: (){
            showDialog(context: context, builder: (BuildContext context){
              return Dialog(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
                child:GestureDetector(
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    child: GridView.count(crossAxisCount: 4,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      children: [
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>LevelScreen()));
                          },
                          child: Container(
                            width: 100,
                            height: 100,
                            color: Colors.black26,
                            child: const Center(child: Text("1",style: TextStyle(color: Colors.black),)),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>LevelScreen()));
                          },
                          child: Container(
                            width: 100,
                            height: 100,
                            color: Colors.black26,
                            child: const Center(child: Text("2",style: TextStyle(color: Colors.black),)),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>LevelScreen()));
                          },
                          child: Container(
                            width: 100,
                            height: 100,
                            color: Colors.black26,
                            child: const Center(child: Text("3",style: TextStyle(color: Colors.black),)),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>LevelScreen()));
                          },
                          child: Container(
                            width: 100,
                            height: 100,
                            color: Colors.black26,
                            child: const Center(child: Text("4",style: TextStyle(color: Colors.black),)),
                          ),
                        ),

                      ],),
                  ),
                ),
              );
            });
          },
          child: Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.grey,
            ),
            child: const Icon(Icons.play_arrow,size: 50,),
          ),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}


// showDialog(context: context, builder: (BuildContext context){
//   return Dialog(
//     shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(10)
//     ),
//     child: Container(
//       padding: const EdgeInsets.all(18),
//       child: GridView.count(
//         mainAxisSpacing: 10,
//         crossAxisSpacing: 10,
//         crossAxisCount: 5,
//         children: [
//           GestureDetector(
//             onTap : (){
//               Navigator.push(context,MaterialPageRoute(builder: (context)=> LevelScreen()));
//             },
//             child: Container(
//               color: Colors.black,
//               width: 5,
//               height: 5,
//             ),
//           ),
//           Container(
//             color: Colors.black,
//             width: 5,
//             height: 5,
//           ),
//           Container(
//             color: Colors.black,
//             width: 5,
//             height: 5,
//           ),
//           Container(
//             color: Colors.black,
//             width: 5,
//             height: 5,
//           ),
//           Container(
//             color: Colors.black,
//             width: 5,
//             height: 5,
//           )
//         ],
//       ),
//     ),
//     );
// });