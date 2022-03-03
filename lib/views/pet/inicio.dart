

import 'package:flutter/material.dart';
import 'package:meu_pet/models/pet.dart';
import 'package:meu_pet/views/chat/chat.dart';
import 'package:meu_pet/views/pet/cadastrar_pet.dart';
import 'package:meu_pet/views/pet/perfil_pet.dart';



class Inicio extends StatefulWidget {
  var pet = <Pet>[];

  Inicio() {
    pet = [];
    pet.add(Pet("Pincher", "Fêmea", "Branca", 3.5, 10, "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer."));
    pet.add(Pet("Vira-Lata", "Fêmea", "Branca/Castanho", 3.5, 10, "Eu dou dinheiro pra minha filha. Eu dou dinheiro pra ela viajar, então é... é... Já vivi muito sem dinheiro, já vivi muito com dinheiro. -Jornalista: Coloca esse dinheiro na poupança que a senhora ganha Rs10 mil por mês. -Dilma: O que que é Rs10 mil?"));
    pet.add(Pet("Pincher", "Fêmea", "Castanha", 3.5, 10, "Todos as descrições das pessoas são sobre a humanidade do atendimento, a pessoa pega no pulso, examina, olha com carinho"));

  }

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text("Meu Pet"),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              color: Colors.pink,

            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.mail,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Chat(),
                  ),
                );
                // do something
              },
            )
          ],



        ),
        /*body:Container(
          padding: EdgeInsets.only(
            top: 0,
            left: 0,
            right: 0,
          ),
          child: ListView.builder(
            itemCount: widget.pet.length,
            itemBuilder: (BuildContext ctxt, int index) {
              final pets = widget.pet[index];
              return Container(
                child: Card(

                  clipBehavior: Clip.antiAlias,
                  child: Column(
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage('assets/lucas.png'),
                          backgroundColor: Colors.transparent,
                        ),
                        title: Text("Lucas Souza"),
                        subtitle: Text("3 min"),

                      ),
                      Text(pets.descricao),
                      SizedBox(
                        height: 10,
                      ),
                      Image.asset(
                        'assets/cachorro-no-calor.png',
                        width: double.infinity,
                      ),
                      ButtonBar(
                        children: [
                          FlatButton(
                            textColor: const Color(0xFFE91E63),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PerfilCachorro(),
                                ),
                              );
                            },
                            child: const Text(
                              'Visualizar informações',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ],
                      ),

                    ],
                  ),

                ),

              );
            },
          ),
        ),*/
        floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.add,

            color: Colors.white,
          ),
          backgroundColor: Colors.pink,
          onPressed: (){
            //_showDialog(context);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CadastrarCachorro(),
              ),
            );
          },

        )
    );
  }
}
