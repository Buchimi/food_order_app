import 'package:flutter/material.dart';

class Language extends StatelessWidget {
  final String countryName;
  final Image countryImage;
  const Language(
      {Key? key, required this.countryName, required this.countryImage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          child: countryImage,
          height: 150,
          width: 150,
        ),
        Text(countryName)
      ],
    );
  }
}
