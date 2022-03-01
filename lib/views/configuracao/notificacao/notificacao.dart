
import 'package:flutter/material.dart';


enum Vibracao { Desativado, Padrao, Curto, Longo}

class Notifica extends StatefulWidget {


  @override
  State<Notifica> createState() => _NotificaState();
}

class _NotificaState extends State<Notifica> {
  bool isSwitched = false;
  String vibracao = "Padrão";
  Vibracao? _vibracao= Vibracao.Padrao;

  void _selecionaVibracao(BuildContext context) async{
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(

            actionsAlignment: MainAxisAlignment.end,
            backgroundColor: Colors.pink.shade50,
            title: Text(
              "Quem pode visualizar as publicações?",
            ),
            actions: [
              Column(
                children: <Widget>[
                  ListTile(
                    title: const Text('Desativado'),
                    leading: Radio<Vibracao>(
                      value: Vibracao.Desativado,
                      groupValue: _vibracao,
                      onChanged: (Vibracao? value) {
                        setState(() {
                          _vibracao = value;

                        });
                        setState(() {
                          vibracao = "Desativado";
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title: const Text('Padrão'),
                    leading: Radio<Vibracao>(
                      value: Vibracao.Padrao,
                      groupValue: _vibracao,
                      onChanged: (Vibracao? value) {
                        setState(() {
                          _vibracao = value;

                        });
                        setState(() {
                          vibracao = "Padrão";
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title: const Text('Curto'),
                    leading: Radio<Vibracao>(
                      value: Vibracao.Curto,
                      groupValue: _vibracao,
                      onChanged: (Vibracao? value) {
                        setState(() {
                          _vibracao = value;

                        });
                        setState(() {
                          vibracao = "Curto";
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title: const Text('Longo'),
                    leading: Radio<Vibracao>(
                      value: Vibracao.Longo,
                      groupValue: _vibracao,
                      onChanged: (Vibracao? value) {
                        setState(() {
                          _vibracao = value;

                        });
                        setState(() {
                          vibracao = "Longo";
                        });
                      },
                    ),
                  ),
                ],
              )
            ],


          );
        }
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notificação"),
      ),
      body: Container(
        padding: EdgeInsets.only(
          top: 10,
          right: 10,
          left: 10,
        ),
        child: ListView(
          children: [
            ListTile(
              title: Text("Sons de notificações"),
              subtitle: Text("Tocar sons ao receber qualquer notificação"),
              trailing: Switch(
                value: isSwitched,
                onChanged: (value) {
                  setState(() {
                    isSwitched = value;
                    print(isSwitched);
                  });
                },
                activeTrackColor: Colors.pinkAccent,
                activeColor: Colors.pink,
              ),
            ),
            ListTile(
              title: Text("Vibração"),
              subtitle: Text(vibracao),
              onTap: (){
                _selecionaVibracao(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
