import 'package:flutter/material.dart';
import 'package:quiz_app/quiz_page.dart';

void main() {
  runApp(HomaPage());
}

class HomaPage extends StatelessWidget {
  const HomaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Builder(
        builder: (context) => Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.indigo[900],
            centerTitle: true,
            title: Text(
              'Quiz of Queen',
              style: TextStyle(fontSize: 27, fontWeight: FontWeight.w700),
            ),
          ),
          body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage('images/welcome.png'),
                ),
                SizedBox(height: 30),
                ElevatedButton(
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.lime[700],
                    minimumSize: Size(170, 42),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Quizpage()));
                  },
                  child: Text(
                    'start game',
                    style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
