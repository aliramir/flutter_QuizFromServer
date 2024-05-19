import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          backgroundColor: const Color.fromARGB(255, 194, 149, 108),
          title: const Text(
            'Quiz Game',
            style: TextStyle(color: Colors.white),
          )),
      // backgroundColor: const Color.fromARGB(255, 219, 219, 219),
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromARGB(255, 219, 219, 219),
          Color.fromARGB(255, 219, 219, 219),
          Color.fromARGB(255, 245, 233, 178)
        ])),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 100,
              ),
              Image.asset(
                '/quiz.png',
                width: 300,
              ),
              const SizedBox(
                height: 40,
              ),
              const Text(
                'Welcome To Quiz Game App!',
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 26,
                    color: Color.fromARGB(255, 194, 149, 108)),
              ),
              const Text(
                'Also You Can Learn how to Game.',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Color.fromARGB(255, 97, 97, 97)),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                decoration: const ShapeDecoration(
                    gradient: LinearGradient(colors: [
                      Color.fromARGB(255, 247, 203, 61),
                      Color.fromARGB(255, 250, 177, 108)
                    ]),
                    shape:
                        StadiumBorder(side: BorderSide(color: Colors.white))),
                // decoration: const BoxDecoration(
                //     shape: BoxShape.rectangle,
                //     gradient: LinearGradient(colors: [
                //       Color.fromARGB(255, 247, 203, 61),
                //       Color.fromARGB(255, 175, 134, 96)
                //     ])),
                child: SizedBox(
                  height: 60,
                  width: 400,
                  child: MaterialButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/quiz');
                      },
                      child: const Text(
                        'Play Game!',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 22),
                      )),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 50,
                width: 400,
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(Colors.white),
                        shape: WidgetStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)))),
                    onPressed: () {
                      Navigator.pushNamed(context, '/help');
                    },
                    child: const Text('How to Play Game',
                        style: TextStyle(
                            fontWeight: FontWeight.w300, fontSize: 14))),
              ),
              const SizedBox(
                height: 15,
              ),
              const Expanded(
                  child: Text(
                'Developer: Ali Ramezani',
                style: TextStyle(
                  fontWeight: FontWeight.w100,
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
