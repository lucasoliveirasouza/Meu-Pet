
import 'package:flutter/material.dart';

class EditarAnuncio extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: (){
            Navigator.of(context).pop();
          },
        ),
        title: Text("Editar anúncio"),
        actions: [
          IconButton(
            icon: Icon(Icons.done),
            onPressed: (){
              Navigator.of(context).pop();
            },
          )
        ],
      ),
    );
  }
}
