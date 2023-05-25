import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mcq_app/Screens/Quiz.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("This is MCQ App")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Container(
              child:Text("Welcome to MCQ App")
            ),
          ),
          SizedBox(height: 2,),

          ElevatedButton(
           child:const Text("Press itt"),onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const QuizScreen())),
           )
        ],
      )
    );
  }
}
