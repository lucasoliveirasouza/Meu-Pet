import 'package:flutter/material.dart';

class EditarTelefone extends StatelessWidget {

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
        title: Text("Editar telefone"),
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
              initialValue: "+5562992341601",
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  labelText: "Telefone",

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
              "Este é o telefone que é utilizado para contato.",
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
