
import 'package:flutter/material.dart';

enum Notificacao { todos, ninguem, estado}

class Conta extends StatefulWidget {

  @override
  State<Conta> createState() => _ContaState();
}

class _ContaState extends State<Conta> {
  String visualizar = "Todos";
  String enviar = "Todos";
  String perfil = "Todos";
  Notificacao? _visualiza = Notificacao.todos;
  Notificacao? _envia = Notificacao.todos;
  Notificacao? _perfil= Notificacao.todos;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Conta"),
      ),
      body: Container(
        padding: EdgeInsets.only(
          top: 10,
          right: 10,
          left: 10
        ),
        child: ListView(
          children: [
            ListTile(
              title: Text("Visualizar publicações"),
              subtitle: Text(visualizar),
              leading: Icon(Icons.home),
              onTap: (){
                _selecionaPublicacao(context);
              },
            ),
            ListTile(
              title: Text("Visualizar perfil"),
              subtitle: Text(perfil),
              leading: Icon(Icons.person_rounded),
              onTap: (){
                _selecionaPerfil(context);
              },

            ),
            ListTile(
              title: Text("Enviar mensagem"),
              subtitle: Text(enviar),
              leading: Icon(Icons.send),
              onTap: (){
                _selecionaEnvia(context);
              },
            ),

          ],
        ),
      ),
    );
  }

  void _selecionaPublicacao(BuildContext context) async{
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
                    title: const Text('Todos'),
                    leading: Radio<Notificacao>(
                      value: Notificacao.todos,
                      groupValue: _visualiza,
                      onChanged: (Notificacao? value) {
                        setState(() {
                          _visualiza = value;

                        });
                        setState(() {
                          visualizar = "Todos";
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title: const Text('Apenas pessoas do meu estado'),
                    leading: Radio<Notificacao>(
                      value: Notificacao.estado,
                      groupValue: _visualiza,
                      onChanged: (Notificacao? value) {
                        setState(() {
                          _visualiza = value;

                        });
                        setState(() {
                          visualizar = "Apenas pessoas do meu estado";
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title: const Text('Ninguém'),
                    leading: Radio<Notificacao>(
                      value: Notificacao.ninguem,
                      groupValue: _visualiza,
                      onChanged: (Notificacao? value) {
                        setState(() {
                          _visualiza = value;

                        });
                        setState(() {
                          visualizar = "Ninguém";
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

  void _selecionaEnvia(BuildContext context) async{
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(

            actionsAlignment: MainAxisAlignment.end,
            backgroundColor: Colors.pink.shade50,
            title: Text(
              "Quem pode enviar mensagens?",
            ),
            actions: [
              Column(
                children: <Widget>[
                  ListTile(
                    title: const Text('Todos'),
                    leading: Radio<Notificacao>(
                      value: Notificacao.todos,
                      groupValue: _envia,
                      onChanged: (Notificacao? value) {
                        setState(() {
                          _envia = value;

                        });
                        setState(() {
                          enviar = "Todos";
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title: const Text('Apenas pessoas do meu estado'),
                    leading: Radio<Notificacao>(
                      value: Notificacao.estado,
                      groupValue: _envia,
                      onChanged: (Notificacao? value) {
                        setState(() {
                          _envia = value;

                        });
                        setState(() {
                          enviar = "Apenas pessoas do meu estado";
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title: const Text('Ninguém'),
                    leading: Radio<Notificacao>(
                      value: Notificacao.ninguem,
                      groupValue: _envia,
                      onChanged: (Notificacao? value) {
                        setState(() {
                          _envia = value;

                        });
                        setState(() {
                          enviar = "Ninguém";
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

  void _selecionaPerfil(BuildContext context) async{
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(

            actionsAlignment: MainAxisAlignment.end,
            backgroundColor: Colors.pink.shade50,
            title: Text(
              "Quem pode visualizar as informações do perfil?",
            ),
            actions: [
              Column(
                children: <Widget>[
                  ListTile(
                    title: const Text('Todos'),
                    leading: Radio<Notificacao>(
                      value: Notificacao.todos,
                      groupValue: _perfil,
                      onChanged: (Notificacao? value) {
                        setState(() {
                          _perfil = value;

                        });
                        setState(() {
                          perfil = "Todos";
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title: const Text('Apenas pessoas do meu estado'),
                    leading: Radio<Notificacao>(
                      value: Notificacao.estado,
                      groupValue: _perfil,
                      onChanged: (Notificacao? value) {
                        setState(() {
                          _perfil = value;

                        });
                        setState(() {
                          perfil = "Apenas pessoas do meu estado";
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title: const Text('Ninguém'),
                    leading: Radio<Notificacao>(
                      value: Notificacao.ninguem,
                      groupValue: _perfil,
                      onChanged: (Notificacao? value) {
                        setState(() {
                          _perfil = value;

                        });
                        setState(() {
                          perfil = "Ninguém";
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
}
