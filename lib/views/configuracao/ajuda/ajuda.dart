import 'package:meu_pet/views/configuracao/sobre/fale_conosco.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';

class Ajuda extends StatelessWidget {

  void openBrowserTab() async{
    const url = 'https://flutter.dev/';
    if (await canLaunch(url)) {
      await launch('$url');
      print("É possível abrir a URL");
    } else {
       print("Não è possível abrir a URL");
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ajuda"),
      ),
      body: Container(
        padding: EdgeInsets.only(
            top: 10,
            left: 10,
            right: 10,
        ),
        child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.help_outline),
              title: Text(
                "Central de Ajuda",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: (){
                openBrowserTab();
              },
            ),
            ListTile(
              leading: Icon(Icons.send),
              title: Text(
                "Fale conosco",
                style: TextStyle(

                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text("Dúvidas específicas."),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FaleConosco(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
