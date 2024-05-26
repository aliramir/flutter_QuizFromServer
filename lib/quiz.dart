import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _MyQuizPage();
}

class _MyQuizPage extends State<QuizPage> {
  var question = [];
  var index = 1;
  var trueAnswers = 0;
  var falseAnswers = 0;
  var response;

  // var url = Uri.parse("https://aliram.ir/api/questions.json");

  // Future<List<dynamic>> fetchData() async {
  //   var result = await http.get(url);
  //   question = jsonDecode(result.body)['result'];
  //   return question;
  // }

  final dio = Dio();

  // void getHttp() async {
  //   final response =
  //       await dio.get('https://dummy.restapiexample.com/api/v1/employees');
  //   if (kDebugMode) {
  //     print(response);
  //   }
  // }

  void request() async {
    Response response;
    response =
        await dio.get('https://dummy.restapiexample.com/api/v1/employees');
    if (kDebugMode) {
      print(response.data.toString());
    }
  }

  validateAnswer(int i) {}

  @override
  void initState() {
    // response = fetchData();
    request();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        // title: Text(question[index]['level']),
        title: const Text(
          'Quiz',
          style: TextStyle(color: Color.fromARGB(255, 31, 31, 31)),
        ),
        centerTitle: true,
        elevation: 10,
        foregroundColor: Colors.black,

        // title: FutureBuilder(
        //   future: response,
        //   builder: (BuildContext context, AsyncSnapshot snapshot) {
        //     if (snapshot.hasData) {
        //       return Text(snapshot.data[index]['Level']);
        //     } else {
        //       return const Text('در حال دریافت اطلاعات');
        //     }
        //   },
        // ),
      ),
      // body: Column(
      //   children: [
      //     Container(
      //         width: double.infinity,
      //         height: 300,
      //         color: const Color.fromARGB(255, 247, 183, 6),
      //         child: const Center(
      //           child: Text(
      //             //question[index]['question'],
      //             'question[index][0]',
      //             style: TextStyle(fontSize: 25),
      //           ),
      //         )),
      //     Expanded(
      //       child: Container(
      //         width: double.infinity,
      //         height: 200,
      //         color: const Color.fromARGB(255, 49, 49, 49),
      //         child: Column(
      //           crossAxisAlignment: CrossAxisAlignment.center,
      //           children: [
      //             const SizedBox(
      //               height: 50,
      //             ),
      //             Row(
      //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //               crossAxisAlignment: CrossAxisAlignment.center,
      //               children: [
      //                 SizedBox(
      //                   child: ElevatedButton(
      //                     style: ButtonStyle(
      //                         backgroundColor: WidgetStateProperty.all(
      //                             const Color.fromARGB(255, 26, 24, 46)),
      //                         shape: WidgetStateProperty.all(
      //                             RoundedRectangleBorder(
      //                                 borderRadius:
      //                                     BorderRadius.circular(18)))),
      //                     onPressed: () {
      //                       validateAnswer(0);
      //                     },
      //                     //child: Text(question[index]['options'][0]),
      //                     child: Text('Button Text'),
      //                   ),
      //                   width: 200,
      //                   height: 60,
      //                 ),
      //                 SizedBox(
      //                   child: ElevatedButton(
      //                     style: ButtonStyle(
      //                         backgroundColor: WidgetStateProperty.all(
      //                             Color.fromARGB(255, 26, 24, 46)),
      //                         shape: WidgetStateProperty.all(
      //                             RoundedRectangleBorder(
      //                                 borderRadius:
      //                                     BorderRadius.circular(18)))),
      //                     onPressed: () {
      //                       validateAnswer(1);
      //                     },
      //                     //child: Text(question[index]['options'][0]),
      //                     child: Text('Button Text'),
      //                   ),
      //                   width: 200,
      //                   height: 60,
      //                 ),
      //                 const SizedBox(
      //                   width: 10,
      //                 ),
      //               ],
      //             ),
      //             const SizedBox(
      //               height: 20,
      //             ),
      //             Row(
      //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //               crossAxisAlignment: CrossAxisAlignment.center,
      //               children: [
      //                 SizedBox(
      //                   child: ElevatedButton(
      //                     style: ButtonStyle(
      //                         backgroundColor: WidgetStateProperty.all(
      //                             Color.fromARGB(255, 26, 24, 46)),
      //                         shape: WidgetStateProperty.all(
      //                             RoundedRectangleBorder(
      //                                 borderRadius:
      //                                     BorderRadius.circular(18)))),
      //                     onPressed: () {
      //                       validateAnswer(2);
      //                     },
      //                     //child: Text(question[index]['options'][0]),
      //                     child: Text('Button Text'),
      //                   ),
      //                   width: 200,
      //                   height: 60,
      //                 ),

      //                 SizedBox(
      //                   child: ElevatedButton(
      //                     style: ButtonStyle(
      //                         backgroundColor: WidgetStateProperty.all(
      //                             Color.fromARGB(255, 26, 24, 46)),
      //                         shape: WidgetStateProperty.all(
      //                             RoundedRectangleBorder(
      //                                 borderRadius:
      //                                     BorderRadius.circular(18)))),
      //                     onPressed: () {
      //                       validateAnswer(3);
      //                     },
      //                     //child: Text(question[index]['options'][0]),
      //                     child: Text('Button Text'),
      //                   ),
      //                   width: 200,
      //                   height: 60,
      //                 ),
      //                 // ElevatedButton(
      //                 //   onPressed: () {
      //                 //     validateAnswer(0);
      //                 //   },
      //                 //   //child: Text(question[index]['options'][0]),
      //                 //   child: Text('Button Text'),
      //                 // ),
      //                 const SizedBox(
      //                   width: 10,
      //                 ),
      //               ],
      //             ),
      //           ],
      //         ),
      //       ),
      //     ),
      //   ],
      // )
    );
  }
}
