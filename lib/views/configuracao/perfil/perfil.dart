


import 'package:flutter/material.dart';
import 'package:meu_pet/views/configuracao/perfil/editar_email.dart';
import 'package:meu_pet/views/configuracao/perfil/editar_endereco.dart';
import 'package:meu_pet/views/configuracao/perfil/editar_genero.dart';
import 'package:meu_pet/views/configuracao/perfil/editar_nome.dart';
import 'package:meu_pet/views/configuracao/perfil/editar_senha.dart';
import 'package:meu_pet/views/configuracao/perfil/editar_telefone.dart';

class Perfil extends StatefulWidget {

  @override
  State<Perfil> createState() => _PerfilState();
}

class _PerfilState extends State<Perfil> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Perfil"),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            color: Colors.pink,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 10, left: 0, right: 0),
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            SizedBox(
              width: 100,
              height: 100,
              child: Image.asset("assets/lucas.png"),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Lucas Souza",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
            ListTile(
              title: Text("Nome:"),
              subtitle: Text("Lucas Souza"),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EditarNome(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text("Endereço de email:"),
              subtitle: Text("lycasoliveira@gmail.com"),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EditarEmail(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text("Senha:"),
              subtitle: Text("********"),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EditarSenha(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text("Telefone:"),
              subtitle: Text("+5562992341601"),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EditarTelefone(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text("Endereço:"),
              subtitle: Text("Av. A20, qd. 29,lt. 06, Sul, Trindade"),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EditarEndereco(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text("Gênero:"),
              subtitle: Text("Masculino"),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EditarGenero(),
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
