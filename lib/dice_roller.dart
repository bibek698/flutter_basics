import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget{
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState(){
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller>{

  var currentDiceRoll = 1;

  void rollDice(){
    setState((){
      currentDiceRoll = randomizer.nextInt(6) + 1;
      
    
    });
    

  }
  @override
  Widget build(context){
    return  Column(
          //mainAxisSize: MainAxisSize.min, this also do center takes minimum space to fit its children, but it will not expand to fill the available space.
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Image.asset(
            'assets/images/dice-$currentDiceRoll.png', 
            width: 200
            ),
            // const SizedBox(height: 20),
          TextButton(
            onPressed: rollDice, 
            style: TextButton.styleFrom(
              padding: const EdgeInsets.only(top: 20),
              foregroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 28),
            ),
            child: Text('Roll Dice'),
            ),


      ],);
  }
}