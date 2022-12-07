import 'package:flutter/material.dart';

class ChangerButton extends StatelessWidget {
  final VoidCallback changeHandler;

  const ChangerButton(this.changeHandler, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: const EdgeInsets.fromLTRB(100, 0, 100, 0),
        child: OutlinedButton(
            onPressed: changeHandler,
            style: OutlinedButton.styleFrom(
                side: const BorderSide(
              width: 2.0,
              color: Color.fromRGBO(130, 0, 155, 1),
            )),
            child: const Text(
              'Change text',
              style: TextStyle(
                  fontSize: 24, color: Color.fromARGB(255, 221, 74, 216)),
            )));
  }
}
