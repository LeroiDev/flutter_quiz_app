import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz,{super.key});
  //add parameter for startScreen pass from Quiz.dart
  final void Function() startQuiz; //function as a value!
  //can use this in parameter if done this way with a variable/field
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'lib/assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(125, 255, 255, 255),
          ),
          // Opacity( //wrap image with widget -> Opacity Widget
          //   opacity: 0.5, //Note this is very resource intensive !
          //   child: Image.asset(
          //     'lib/assets/images/quiz-logo.png',
          //     width: 300,
          //   ),
          // ),
          const SizedBox(
            height: 80,
          ),
           Text(
            "Learn Flutter the fun way",
              style: GoogleFonts.lato(
              fontWeight: FontWeight.bold,
              fontSize: 32,
              color: const Color.fromARGB(255, 237, 223, 252)
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          OutlinedButton.icon(
            onPressed: () { //can also do pointer startQuiz only
              startQuiz(); //passing around switchScreen() from Quiz.dart
            }, //function only executes when button tapped
            icon: const Icon(Icons.arrow_right_alt),
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              padding: const EdgeInsets.all(10),
            ),
            label: Text(
                'Start Quiz',
            style: GoogleFonts.lato(
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),),
          ),
        ],
      ),
    );
  }
}
