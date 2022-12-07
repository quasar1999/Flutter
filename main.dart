import 'package:flutter/material.dart';

import './changer_button.dart';
import './changed_texts.dart';

class TextChangerApp extends StatefulWidget {
  const TextChangerApp({super.key});

  @override
  State<TextChangerApp> createState() => _TextChangerAppState();
}

class _TextChangerAppState extends State<TextChangerApp> {
  var _colorIndex = 0;

  void _changeText() {
    setState(() {
      _colorIndex++;
    });
  }

  final colorList = [
    {
      'color': 'Red',
      'meaning': 'is the color of power',
    },
    {
      'color': 'Blue',
      'meaning': 'is the color of loyalty',
    },
    {
      'color': 'White',
      'meaning': 'is the color of peace',
    },
    {
      'color': 'Green',
      'meaning': 'is the color of hope',
    },
    {
      'color': 'Yellow',
      'meaning': 'is the color of happiness',
    },
    {
      'color': 'Purple',
      'meaning': 'is the color of imagination',
    },
    {'color': 'Black', 'meaning': 'is the color of grief'}
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text(
                'Text Changer',
              ),
              backgroundColor: Color.fromRGBO(130, 0, 155, 1.0),
            ),
            body: Column(
              children: [
                if (_colorIndex < colorList.length) ...[
                  ChangedTexts(colorsList: colorList, colorIndex: _colorIndex)
                ] else ...[
                  const Text(
                    'Over!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 48,
                        fontWeight: FontWeight.bold),
                  )
                ],
                ChangerButton(_changeText)
              ],
            )));
  }
}

void main() => runApp(TextChangerApp());
