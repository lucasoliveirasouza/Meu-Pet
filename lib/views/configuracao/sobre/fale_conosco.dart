import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_unilink/whatsapp_unilink.dart';

class FaleConosco extends StatelessWidget {

  openwhatsapp(context,texto) async{

    final link = WhatsAppUnilink(
      phoneNumber: '+5562992341601',
      text: texto,
    );

    await launch('$link');
  }

  var texto = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fale conosco"),
      ),
      body: Container(
        padding: EdgeInsets.only(
          left: 10,
          top: 10,
          right: 10,
        ),
        child: ListView(
          children: [
            TextFormField(
              controller: texto,
              maxLines: 4,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.pink,
                      ),
                      borderRadius: BorderRadius.circular(5)
                  ),
                  labelText: "Escreva sua dúvida",
                  labelStyle: TextStyle(
                    color: Colors.black38,
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                  )
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              height: 50,


              child: FlatButton(
                color: Colors.pink,
                shape: RoundedRectangleBorder(side: BorderSide(
                    color: Colors.pink,
                    width: 1,
                    style: BorderStyle.solid
                ),
                    borderRadius: BorderRadius.circular(5)
                ),

                onPressed: (){
                  openwhatsapp(context,texto.text);
                },
                child: Text(
                    "Enviar dúvida",
                    style: TextStyle(
                      color: Colors.white,
                    ),

                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
                "Responderemos sua dúvida via e-mail de cadastro.",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey.shade600,
                )
            )
          ],
        )
      ),
    );
  }
}
