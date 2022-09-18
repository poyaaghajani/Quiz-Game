import 'package:quiz_app/Data/Question.dart';

List<Question> getQuestionsList() {
  var firstQuestion = Question();
  firstQuestion.questionTitle =
      'who is the moust popular juggler in the world,?';
  firstQuestion.imageNameNumber = '1';
  firstQuestion.correctAnswer = 2;
  firstQuestion.answerList = [
    'Jack Mari..1',
    'david cuperfild..2',
    'Harry Hudini..3',
    'David Blain..4'
  ];

  var secondQuestion = Question();
  secondQuestion.questionTitle = 'which country bulid  MIRA  spase station,?';
  secondQuestion.imageNameNumber = '2';
  secondQuestion.correctAnswer = 0;
  secondQuestion.answerList = [
    'Rusian..1',
    'American..2',
    'China..3',
    'India..4'
  ];

  var thirdQuestion = Question();
  thirdQuestion.questionTitle = 'which country has best economy,?';
  thirdQuestion.imageNameNumber = '3';
  thirdQuestion.correctAnswer = 1;
  thirdQuestion.answerList = [
    'American..1',
    'Switzerlan..2',
    'China..3',
    'Canada..4'
  ];

  var forthQuestion = Question();
  forthQuestion.questionTitle = 'how many species of fish live in the oceans,?';
  forthQuestion.imageNameNumber = '4';
  forthQuestion.correctAnswer = 3;
  forthQuestion.answerList = ['20000..1', '50000..2', '14500..3', '18000..4'];

  var fifthQuestion = Question();
  fifthQuestion.questionTitle =
      'what is the name of the smallest island in the world,?';
  fifthQuestion.imageNameNumber = '5';
  fifthQuestion.correctAnswer = 0;
  fifthQuestion.answerList = [
    'Just room enough Island..1',
    'Kotakarajima Island..2',
    'Suwarrow Island..3',
    'Umananda Island..4'
  ];

  var sixthQuestion = Question();
  sixthQuestion.questionTitle = 'who is the discoverer of alchol,?';
  sixthQuestion.imageNameNumber = '6';
  sixthQuestion.correctAnswer = 3;
  sixthQuestion.answerList = [
    'Jhan Kloni..1',
    'Alex Magi..2',
    'Abo Alisina..3',
    'Zakaria Razi..4'
  ];

  var seventhQuestion = Question();
  seventhQuestion.questionTitle = 'how many years do the Olympics start,?';
  seventhQuestion.imageNameNumber = '7';
  seventhQuestion.correctAnswer = 2;
  seventhQuestion.answerList = [
    '8 years..1',
    '16 years..2',
    '4 years..3',
    '6 years..4'
  ];

  var eighthQuestion = Question();
  eighthQuestion.questionTitle =
      'who was the first person to travel to the moon,?';
  eighthQuestion.imageNameNumber = '8';
  eighthQuestion.correctAnswer = 2;
  eighthQuestion.answerList = [
    'Kailen Morfi..1',
    'Morgan Angel..2',
    'Niel Armstrong..3',
    'Jax Sccot..4'
  ];

  var ninethQuestion = Question();
  ninethQuestion.questionTitle = 'how many planets revolve around the sun,?';
  ninethQuestion.imageNameNumber = '9';
  ninethQuestion.correctAnswer = 1;
  ninethQuestion.answerList = ['7..1', '8..2', '10..3', '6..4'];

  return [
    firstQuestion,
    secondQuestion,
    thirdQuestion,
    forthQuestion,
    fifthQuestion,
    sixthQuestion,
    seventhQuestion,
    eighthQuestion,
    ninethQuestion
  ];
}
