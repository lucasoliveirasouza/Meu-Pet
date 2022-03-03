
import 'package:flutter/material.dart';


class PerfilCachorro extends StatefulWidget {

  @override
  State<PerfilCachorro> createState() => _PerfilCachorroState();
}

class _PerfilCachorroState extends State<PerfilCachorro> {
  var interesse = "Tenho interesse";
  Color corFundo = Colors.grey.shade200;
  Color corFonte = Colors.pink;

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        title: Text(
          "Informações s",
        ),
        leading: IconButton(
          icon: Icon(Icons.close),
          color: Colors.white,
          onPressed: () => Navigator.pop(context,false),
        ),
      ),
      /*body: Container(
        padding: EdgeInsets.only(top: 5, left: 5, right: 5),
        color: Colors.white,
        child: ListView(
          children:<Widget>[
            SizedBox(
              child: Image.asset("assets/cachorro-no-calor.png"),
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              title: Text("Descricão:"),
              subtitle: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer."),
              leading: Icon(Icons.description),
            ),
            ListTile(
              title: Text("Raça:"),
              subtitle: Text("Pinscher"),
              leading: Icon(Icons.pets),
            ),
            ListTile(
              title: Text("Cor:"),
              subtitle: Text("Branca/Marron"),
              leading: Icon(Icons.color_lens),
            ),
            ListTile(
              title: Text("Peso:"),
              subtitle: Text("3.5 kg"),
              leading: Icon(Icons.balance),
            ),
            ListTile(
              title: Text("Idade:"),
              subtitle: Text("10"),
              leading: Icon(Icons.calendar_today_outlined),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              height: 50,
              padding: EdgeInsets.only(left: 80,right: 80),

              child: FlatButton(
                color: corFundo,
                shape: RoundedRectangleBorder(side: BorderSide(
                    color: Colors.pink,
                    width: 1,
                    style: BorderStyle.solid
                ),
                    borderRadius: BorderRadius.circular(5)
                ),
                textColor: corFonte,
                onPressed: (){
                  setState(() {
                    if(corFundo == Colors.pink){
                      corFundo = Colors.grey.shade200;
                      interesse = "Tenho Interesse";
                      corFonte = Colors.pink;
                    }else{
                      corFundo = Colors.pink;
                      interesse = "Interessado";
                      corFonte = Colors.white;
                    }
                  });
                },
                child: Text(interesse),
              ),
            ),
          ],
        ),
      ),*/

    );
  }
}
