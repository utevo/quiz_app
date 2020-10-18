import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String _answerText;
  final Function _onPressed;

  Answer(this._answerText, this._onPressed);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text(_answerText),
        onPressed: _onPressed,
        color: Colors.cyanAccent,
      ),
    );
  }
}
