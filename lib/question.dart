import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class Question extends StatelessWidget {
  final String questionText;
  const Question(this.questionText, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(11),
      child: Text(
        questionText,
        style: GoogleFonts.poppins(
          color: const Color.fromARGB(255, 59, 59, 61),
          fontSize: 20,
          fontWeight: FontWeight.w900,
        ),
      ),
    );
  }
}