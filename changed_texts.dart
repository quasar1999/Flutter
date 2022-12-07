import 'package:flutter/material.dart';

class ChangedTexts extends StatelessWidget {
  final List<Map<String, String>> colorsList;
  int colorIndex;
  String colorName = '';
  String colorMeaning = '';
  ChangedTexts(
      {super.key, required this.colorsList, required this.colorIndex}) {
    colorName = colorsList[colorIndex]['color'].toString();
    colorMeaning = colorsList[colorIndex]['meaning'].toString();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (colorName == 'Red') ...[
          Text(colorName,
              style: const TextStyle(
                  color: Color.fromARGB(255, 255, 0, 0),
                  fontSize: 36,
                  fontWeight: FontWeight.bold)),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              colorMeaning,
              style: const TextStyle(
                  color: Color.fromARGB(255, 253, 253, 253),
                  fontSize: 24,
                  shadows: [
                    Shadow(blurRadius: 8.0, color: Color.fromARGB(255, 0, 0, 0))
                  ]),
            ),
          )
        ] else if (colorName == 'Blue') ...[
          Text(colorName,
              style: const TextStyle(
                  color: Color.fromARGB(255, 0, 0, 255),
                  fontSize: 36,
                  fontWeight: FontWeight.bold)),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              colorMeaning,
              style: const TextStyle(
                  color: Color.fromARGB(255, 253, 253, 253),
                  fontSize: 24,
                  shadows: [
                    Shadow(blurRadius: 8.0, color: Color.fromARGB(255, 0, 0, 0))
                  ]),
            ),
          )
        ] else if (colorName == 'White') ...[
          Text(colorName,
              style: const TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  shadows: [
                    Shadow(blurRadius: 8.0, color: Color.fromARGB(255, 0, 0, 0))
                  ])),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              colorMeaning,
              style: const TextStyle(
                  color: Color.fromARGB(255, 253, 253, 253),
                  fontSize: 24,
                  shadows: [
                    Shadow(blurRadius: 8.0, color: Color.fromARGB(255, 0, 0, 0))
                  ]),
            ),
          )
        ] else if (colorName == 'Green') ...[
          Text(colorName,
              style: const TextStyle(
                  color: Color.fromARGB(255, 0, 255, 0),
                  fontSize: 36,
                  fontWeight: FontWeight.bold)),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              colorMeaning,
              style: const TextStyle(
                  color: Color.fromARGB(255, 253, 253, 253),
                  fontSize: 24,
                  shadows: [
                    Shadow(blurRadius: 8.0, color: Color.fromARGB(255, 0, 0, 0))
                  ]),
            ),
          )
        ] else if (colorName == 'Yellow') ...[
          Text(colorName,
              style: const TextStyle(
                  color: Color.fromARGB(255, 255, 250, 0),
                  fontSize: 36,
                  fontWeight: FontWeight.bold)),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              colorMeaning,
              style: const TextStyle(
                  color: Color.fromARGB(255, 253, 253, 253),
                  fontSize: 24,
                  shadows: [
                    Shadow(blurRadius: 8.0, color: Color.fromARGB(255, 0, 0, 0))
                  ]),
            ),
          )
        ] else if (colorName == 'Purple') ...[
          Text(colorName,
              style: const TextStyle(
                  color: Color.fromARGB(255, 160, 32, 240),
                  fontSize: 36,
                  fontWeight: FontWeight.bold)),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              colorMeaning,
              style: const TextStyle(
                  color: Color.fromARGB(255, 253, 253, 253),
                  fontSize: 24,
                  shadows: [
                    Shadow(blurRadius: 8.0, color: Color.fromARGB(255, 0, 0, 0))
                  ]),
            ),
          )
        ] else if (colorName == 'Black') ...[
          Text(colorName,
              style: const TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 36,
                  fontWeight: FontWeight.bold)),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              colorMeaning,
              style: const TextStyle(
                  color: Color.fromARGB(255, 253, 253, 253),
                  fontSize: 24,
                  shadows: [
                    Shadow(blurRadius: 8.0, color: Color.fromARGB(255, 0, 0, 0))
                  ]),
            ),
          )
        ],
      ],
    );
  }
}
