import 'dart:math';

import 'package:flutter/material.dart';

final randomiser = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<StatefulWidget> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  // var activeDiceImage = "assets/images/dice-1.png";
  var currentDiceRoll = 2;

  void rollDice() {
    setState(() {
      currentDiceRoll = randomiser.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Image.asset(
        "assets/images/dice-$currentDiceRoll.png",
        width: 200,
      ),
      const SizedBox(
        height: 20.0,
      ),
      ElevatedButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
              padding: const EdgeInsets.all(8.0),
              foregroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 28)),
          child: const Text("Roll Dice"))
    ]);
  }
}
