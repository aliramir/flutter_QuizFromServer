import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void testswidgets() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: Center(
      //   child: Text('data'),
      // ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required String title});

  @override
  State<MyHomePage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          // centerTitle: true,
          // elevation: 35.5,
          // shape: const RoundedRectangleBorder(
          //     borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),
          title: const Text('Default AppBar')),

      // body: Center(
      //   child: GestureDetector(
      //     onTap: () {
      //       if (kDebugMode) {
      //         print('object');
      //       }
      //     },
      //     onDoubleTap: () {
      //       if (kDebugMode) {
      //         print('object');
      //       }
      //     },
      //     child: const Text('hello'),
      //   ),
      // ),

      // body: Column(
      //   children: [
      //     Expanded(
      //       child: Container(
      //         width: double.infinity,
      //         color: const Color.fromARGB(255, 226, 17, 115),
      //       ),
      //     ),
      //     Expanded(
      //       child: Container(
      //           width: double.infinity,
      //           color: const Color.fromARGB(255, 17, 90, 226),
      //           child: const Text('Center Text')),
      //     ),
      //     Expanded(
      //       child: Container(
      //           width: double.infinity,
      //           height: 350,
      //           color: const Color.fromARGB(255, 163, 226, 17)),
      //     ),
      //   ],
      // ),

      // body: Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //   crossAxisAlignment: CrossAxisAlignment.center,
      //   children: [
      //     Container(
      //       margin: const EdgeInsets.all(25),
      //       width: 100,
      //       height: 200,
      //       child:
      //           Text('Test', style: Theme.of(context).textTheme.headlineMedium),
      //     ),
      //     SizedBox(
      //       child: FloatingActionButton(
      //         onPressed: () {},
      //         child: const Text('Button'),
      //       ),
      //     ),
      //   ],
      // ),

      // body: Column(
      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //   crossAxisAlignment: CrossAxisAlignment.stretch,
      //   mainAxisSize: MainAxisSize.max,
      //   verticalDirection: VerticalDirection.down,
      //   children: [
      //     Container(
      //       height: 450,
      //       color: Colors.grey,
      //       child: ElevatedButton(
      //         onPressed: () {},
      //         child: const Text('Click Me!'),
      //       ),
      //     ),
      //     const SizedBox(
      //       height: 50,
      //     ),
      //     Container(
      //       color: Colors.amber,
      //       height: 450,
      //       width: 100,
      //       child: const Text(
      //         'data',
      //         style: TextStyle(
      //             fontFamily: 'calibri',
      //             fontSize: 20,
      //             fontWeight: FontWeight.w700),
      //       ),
      //     ),
      //   ],
      // ),

      // body: Container(
      //   margin: const EdgeInsets.all(25),
      //   height: 20,
      //   width: 150,
      //   child: const Text(
      //     'Hello world!',
      //     style: TextStyle(fontFamily: 'calibri', fontWeight: FontWeight.w700),
      //   ),
      // ),

      // body: const Center(
      //   child: Text(
      //     overflow: TextOverflow.fade,
      //     softWrap: false,
      //     maxLines: 1,
      //     'Hello Ali',
      //     style: TextStyle(
      //       color: Colors.blue,
      //       fontSize: 50,
      //       fontWeight: FontWeight.bold,
      //       letterSpacing: 30,
      //       backgroundColor: Colors.grey,
      //     ),
      //   ),
      // ),
    );
  }
}
