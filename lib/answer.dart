import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function _onPressed;

  Answer(this._onPressed);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        child: Text('Answer'),
        onPressed: _onPressed,
      ),
    );
  }
}
