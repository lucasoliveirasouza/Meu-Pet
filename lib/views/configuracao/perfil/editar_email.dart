

import 'package:flutter/material.dart';

class EditarEmail extends StatelessWidget {

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
        title: Text("Editar e-mail"),
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
              initialValue: "lycasoliveira@gmail.com",
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  labelText: "E-mail",

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
              "Este endereço de e-mail é utilizado para realizar login e receber notifcações. Certifique se é um e-mail ativo.",
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
