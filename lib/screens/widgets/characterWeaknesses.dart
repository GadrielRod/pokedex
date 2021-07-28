import 'package:flutter/material.dart';
import 'package:pokedex/style.dart';

class CharacterWeaknesses extends StatelessWidget {
  final List<String> listOfWeaknesses;

  CharacterWeaknesses({
    required this.listOfWeaknesses,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Fraquezas",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 14,
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 15,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: buildList(listOfWeaknesses),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> buildList(List<String> itens) {
    List<Widget> listOfWidget = [];
    itens.forEach((element) {
      listOfWidget.add(
        Container(
          child: Text(
            element,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          decoration: BoxDecoration(
            border: Border.all(
              width: 7,
              color: darkYellowTheme,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
            color: darkYellowTheme,
          ),
        ),
      );
    });
    return listOfWidget;
  }
}
