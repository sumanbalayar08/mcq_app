import 'package:flutter/material.dart';
import 'package:mcq_app/models/Question.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  List<Question> questions = [
    Question(
        question: 'What is the capital of France?',
        options: ['London', 'Paris', 'Berlin', 'Rome'],
        values: [false, true, false, false]),
    Question(
        question: 'Which is the largest planet in our solar system?',
        options: ['Mars', 'Earth', 'Jupiter', 'Saturn'],
        values: [false, false, true, false]),
    // Add more questions and options as needed
  ];
   late String? _selectedValue = null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Quiz Section"),
        ),
        body: ListView.builder(
          itemCount: questions.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(questions[index].question),
              subtitle: Column(
                children: questions[index]
                    .options
                    .map((option) => RadioListTile(
                          title: Text(option),
                          value: option,
                          groupValue:
                              _selectedValue, // Specify the selected value here
                          onChanged: (value) {
                            setState(() {
                              _selectedValue = value;
                            });
                          },
                        ))
                    .toList(),
              ),
            );
          },
        ));
  }
}
