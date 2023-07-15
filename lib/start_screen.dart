import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz,{super.key});

  final void Function() startQuiz;
  
  @override
  Widget build(context) {
    return  Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
          children: [
          Image.asset(
            'assets/images/quiz_logo.png', 
             width: 300,
            //  color:const  Color.fromARGB(196, 218, 203, 203), 
          ),
          const SizedBox(height: 10),
         Text('Learn Flutter the fun way!',
          style: GoogleFonts.lato(
            color: const Color.fromARGB(255, 71, 18, 65),
            fontSize: 28,
            fontWeight: FontWeight.bold,

          ),
          ),
          const SizedBox(height: 100),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
          ),
          icon: const Icon(Icons.arrow_right_alt),
          
          label: const Text(
            'Start Quiz',
             style: TextStyle(
              color: Color.fromARGB(255, 0, 0, 0),
              fontSize: 30,
           ),
           ),
          )
        ],
      ),
    );
  }


}