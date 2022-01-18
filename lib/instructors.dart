import 'package:flutter/material.dart';

class Instructors extends StatelessWidget {
  final Image instructorFace;
  final String instructorName;
  const Instructors(
      {Key? key, required this.instructorFace, required this.instructorName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: 200,
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          instructorFace,
          Text(
            instructorName,
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.white, fontFamily: "Langer",
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
