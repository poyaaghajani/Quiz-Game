import 'package:flutter/material.dart';
import 'package:quiz_app/Data/Question.dart';
import 'package:quiz_app/Screens/result.scrren.dart';
import 'package:quiz_app/constants/constants.dart';

class Quizpage extends StatefulWidget {
  const Quizpage({Key? key}) : super(key: key);

  @override
  State<Quizpage> createState() => _QuizpageState();
}

class _QuizpageState extends State<Quizpage> {
  int shownQuestionIndex = 0;

  Question? selecktedQuestion;

  bool isFinalAnswerSubmited = false;

  int correctanswer = 0;

  @override
  Widget build(BuildContext context) {
    selecktedQuestion = getQuestionsList()[shownQuestionIndex];
    String questionImageIndex =
        getQuestionsList()[shownQuestionIndex].imageNameNumber!;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo[900],
        centerTitle: true,
        title: Text(
          '${shownQuestionIndex + 1} of ${getQuestionsList().length}',
          style: TextStyle(fontSize: 27, fontWeight: FontWeight.w700),
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
            ),
            Image(
              image: AssetImage('images/$questionImageIndex.png'),
              height: 300,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              getQuestionsList()[shownQuestionIndex].questionTitle!,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            ...List.generate(
              4,
              (index) => getAnswers(index),
            ),
            if (isFinalAnswerSubmited)
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.deepOrangeAccent,
                    minimumSize: Size(170, 40)),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) => ResultScreen(
                        correctAnswer: correctanswer,
                      ),
                    ),
                  );
                },
                child: Text(
                  'quiz result',
                  style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget getAnswers(int index) {
    return ListTile(
      title: Text(
        getQuestionsList()[shownQuestionIndex].answerList![index],
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        textAlign: TextAlign.end,
      ),
      onTap: () {
        if (selecktedQuestion!.correctAnswer == index) {
          correctanswer++;
        }
        if (shownQuestionIndex == getQuestionsList().length - 1) {
          isFinalAnswerSubmited = true;
        }
        setState(() {
          if (shownQuestionIndex < getQuestionsList().length - 1) {
            shownQuestionIndex++;
          }
        });
      },
    );
  }
}
