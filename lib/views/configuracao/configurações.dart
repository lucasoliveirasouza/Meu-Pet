import 'package:flutter/material.dart';
import 'package:meu_pet/services/auth_service.dart';
import 'package:meu_pet/views/autenticacao/login.dart';
import 'package:meu_pet/views/configuracao/ajuda/ajuda.dart';
import 'package:meu_pet/views/configuracao/conta/conta.dart';
import 'package:meu_pet/views/configuracao/interesse/interesse.dart';
import 'package:meu_pet/views/configuracao/notificacao/notificacao.dart';

import 'package:meu_pet/views/configuracao/perfil/perfil.dart';

import 'package:meu_pet/views/configuracao/sobre/sobre.dart';

class Configuracoes extends StatefulWidget {

  @override
  State<Configuracoes> createState() => _ConfiguracoesState();
}

class _ConfiguracoesState extends State<Configuracoes> {

  void _settingFeature(BuildContext context) async{
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(

            actionsAlignment: MainAxisAlignment.end,

            title: ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text("Sair"),
              onTap: (){
                AuthService().logout();
              },
            ),


          );
        });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Configurações"),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: (){
              _settingFeature(context);

            },

          )
        ],
      ),
      body: Container(
        child: ListView(
          children: [
            SizedBox(
              height: 10,
            ),
            ListTile(

              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('assets/lucas.png'),

              ),
              title: Text("Lucas Souza"),

              trailing: Icon(
                Icons.edit,
              ),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Perfil(),
                  ),
                );
              },
            ),
            Divider(),
            ListTile(

              leading: Icon(
                Icons.settings,
              ),
              title: Text("Conta"),
              subtitle: Text("Privacidade, segurança, dados"),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Conta(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(
                Icons.star,
              ),
              title: Text("Meus interesses"),
              subtitle: Text("Anúncios marcados com interesse"),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Interesse(),
                  ),
                );
              },
            ),


            ListTile(
              leading: Icon(
                  Icons.notifications
              ),
              title: Text("Notificações"),
              subtitle: Text("Mensagens, acessos, novos anúncios"),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Notifica(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(
                  Icons.help
              ),
              title: Text("Ajuda"),
              subtitle: Text("Central de ajuda, fale conosco"),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Ajuda(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(
                  Icons.info
              ),
              title: Text("Sobre"),
              trailing: Icon(Icons.arrow_forward_ios),
              subtitle: Text("Termos de uso, bibliotecas de códigos, política de dados"),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Sobre(),
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
