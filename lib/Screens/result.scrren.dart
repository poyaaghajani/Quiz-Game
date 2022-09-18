import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen({Key? key, this.correctAnswer = 0}) : super(key: key);

  int correctAnswer = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo[900],
        centerTitle: true,
        title: Text(
          'Your Score',
          style: TextStyle(fontSize: 27, fontWeight: FontWeight.w700),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Image(
                image: AssetImage('images/cup.png'),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: FaIcon(FontAwesomeIcons.chessQueen),
                ),
                Text(
                  'correct answers',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                ),
                IconButton(
                  onPressed: () {},
                  icon: FaIcon(FontAwesomeIcons.chessQueen),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              '$correctAnswer',
              style: TextStyle(
                  fontSize: 70,
                  fontWeight: FontWeight.w500,
                  color: Colors.green[700]),
            ),
            Container(
              width: 150,
              child: Divider(
                color: Colors.black,
                thickness: 1.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
