

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Licencas extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          padding: EdgeInsets.only(
            top: 50,
            left: 10,
            right: 10,
          ),
          color: Colors.pink.shade50,
          child: ListView(
            children: [
              Text(
                "Software desenvolvido por Lucas Oliveira, utilizando as seguintes tecnologias:",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Flutter",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Firebase",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        )
    );
  }
}
