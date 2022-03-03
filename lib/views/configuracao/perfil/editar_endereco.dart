

import 'package:flutter/material.dart';

class EditarEndereco extends StatelessWidget {

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
        title: Text("Editar endereço"),
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
              initialValue: "Av. A20, qd. 29,lt. 06, Sul, Trindades",
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  labelText: "Endereço",

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
              "Este é endereço de sua residência. Ele é utilizado para que possamos direcionar animais mais próximos de você.",
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
