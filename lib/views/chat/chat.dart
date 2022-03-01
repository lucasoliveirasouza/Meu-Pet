import 'package:flutter/material.dart';

class Chat extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Conversas"),

      ),
      body: Container(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(7.0),
              child: TextField(
                onChanged: (text) {

                },
                decoration: InputDecoration(
                    hintText: "Pesquisar",
                    prefixIcon: Icon(Icons.search),
                    filled: true,
                    enabledBorder: UnderlineInputBorder(
                      borderSide: new BorderSide(color: Colors.pink),
                      borderRadius: new BorderRadius.circular(5),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(5.0),
                      ),
                    )
                ),
              ),
            ),
            /*ListTile(
              leading: CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage('assets/lucas.png'),
                backgroundColor: Colors.transparent,
              ),
              title: Text("Lucas Souza"),
              subtitle: Text("Enviado há 9 min"),
              trailing: Icon(Icons.camera_alt_outlined),
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage('assets/cachorro-no-calor.png'),
                backgroundColor: Colors.transparent,
              ),
              title: Text("Geovana de Matos"),
              subtitle: Text("Enviado há 20 min"),
              trailing: Icon(Icons.camera_alt_outlined),
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage('assets/cachorro-no-calor.png'),
                backgroundColor: Colors.transparent,
              ),
              title: Text("Vitória Uzumaki"),
              subtitle: Text("Enviado terça-feira"),
              trailing: Icon(Icons.camera_alt_outlined),
            ),*/
          ],
        ),
      ),
    );
  }
}
