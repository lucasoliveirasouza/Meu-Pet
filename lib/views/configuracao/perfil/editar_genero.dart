

import 'package:flutter/material.dart';

class EditarGenero extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: () {
            Navigator.pop(context,false);
          },

        ),
        title: Text("Editar gênero"),
        actions: [
          IconButton(
              icon: Icon(Icons.done),
              onPressed: () {
                Navigator.pop(context,false);
              }
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(
          top: 10,
          left: 10,
          right: 10,
        ),
        child: ListView(
          children: [
            TextFormField(
              initialValue: "Masculino",
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  labelText: "Gênero",

                  labelStyle: TextStyle(
                    color: Colors.black38,
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                  )
              ),
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Este é o gênero pelo qual você se identifica e prefere como seja referenciado.",
              style: TextStyle(
                fontSize: 11,
              ),
            ),


          ],
        ),
      ),
    );
  }
}
