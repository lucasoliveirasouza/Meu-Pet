
import 'package:flutter/material.dart';

class EditarNome extends StatelessWidget {


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
        title: Text("Editar nome"),
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
              initialValue: "Lucas Souza",
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  labelText: "Nome",

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
                "As pessoas irão descobrir e interagir com você usando o nome pelo qual você é conhecido:seu nome completo, apelido ou nome comercial",
                style: TextStyle(
                  fontSize: 11,
                ),
            ),

            SizedBox(
              height: 15,
            ),
            Text(
              "Você pode alterar o seu nome a qualquer momento.",
              style: TextStyle(
                fontSize: 11,
              ),
            )
          ],
        ),
      ),
    );
  }
}
