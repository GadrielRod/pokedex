import 'package:flutter/material.dart';
import 'package:pokedex/models/details.dart';
import 'package:pokedex/screens/widgets/character.dart';
import 'package:pokedex/screens/widgets/characterDetails.dart';

import 'package:pokedex/screens/widgets/characterWeaknesses.dart';
import 'package:pokedex/style.dart';

class Home extends StatelessWidget {
  final details = Details(
    pokemonName: "Pikachu",
    description:
        "Os pikachu, que podem gerar eletricidades extramentes poderosas.",
    height: 0.4,
    weight: 6.0,
    type: "Eletrico",
    photo: "assets/images/pikachu2x.png",
    hability: "Choque do trovão",
    weaknesses: ["Terra"],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset("assets/images/logo.png"),
        title: Text(
          details.pokemonName,
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: redTheme,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Character(details),
            CharacterDetails(details),
            CharacterWeaknesses(
              listOfWeaknesses: details.weaknesses,
            ),
          ],
        ),
      ),
    );
  }
}
