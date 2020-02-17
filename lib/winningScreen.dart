import 'package:flutter/material.dart';

class WinningScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final WinningArgs args = ModalRoute.of(context).settings.arguments;
    print("Winner: ${args.playerWon}");

    return Scaffold(
      appBar: AppBar(
        title: args.playerWon ? Text('Congratulations!') : Text('Oops!'),
      ),
      body: Center(
        child: args.playerWon ? Text('You won!') : Text('Next time loser!'),
      ),
    );
  }
}

class WinningArgs {
  final bool playerWon;

  WinningArgs({this.playerWon});
}