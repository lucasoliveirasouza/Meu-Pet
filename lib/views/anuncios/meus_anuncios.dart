import 'package:flutter/material.dart';
import 'package:meu_pet/views/anuncios/editar_anuncio.dart';

class MeusAnuncios extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Meus anúncios"),
          automaticallyImplyLeading: false,
        ),
        /*body: Container(
          child: ListView(
            children: [
              Card(
                  child: Column(
                    children: [
                      ListTile(
                        title: Text("Pinscher"),
                        trailing: IconButton(
                          icon: Icon(Icons.edit),
                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => EditarAnuncio(),
                              ),
                            );
                          },
                        ),
                      ),
                      Image.asset(
                        'assets/pet-no-calor.png',
                        width: double.infinity,
                      ),
                    ],
                  )
              ),

            ],
          ),
        )*/
    );
  }
}
