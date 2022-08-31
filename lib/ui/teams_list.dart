import 'dart:io';

import 'package:flutter/material.dart';

class TeamsList extends StatelessWidget {
  TeamsList({Key? key}) : super(key: key);

  final teams = [
    {
      "name": "Qatar",
      "group": "A",
      "image":
          "https://upload.wikimedia.org/wikipedia/pt/a/a9/Associa%C3%A7%C3%A3o_do_Qatar_de_Futebol.png"
    },
    {
      "name": "Equador",
      "group": "A",
      "image": "https://upload.wikimedia.org/wikipedia/pt/7/74/FEFecu.png"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: teams.length,
      itemBuilder: (context, i) {
        var team = teams[i];
        var simbol = Image.network(team["image"]!);

        return ListTile(
            leading: simbol,
            title: Text(team["name"]!),
            subtitle: Text("Grupo: " + team["group"]!));
      },
    );
  }
}
