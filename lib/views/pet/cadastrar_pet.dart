import 'package:flutter/material.dart';
import 'package:meu_pet/services/pet/pet_services.dart';
import 'package:meu_pet/views/home/home.dart';

class CadastrarCachorro extends StatelessWidget {

  var raca = TextEditingController();
  var sexo = TextEditingController();
  var cor = TextEditingController();
  var peso = TextEditingController();
  var idade = TextEditingController();
  var descricao = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Cadastrar anúncio",
        ),
        leading: IconButton(
          icon: Icon(Icons.close),
          color: Colors.white,
          onPressed: () => Navigator.pop(context,false),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 10, left: 40, right: 40),
        color: Colors.white,
        child: ListView(
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: raca,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    labelText: "Raça",
                    labelStyle: TextStyle(
                      color: Colors.black38,
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                    )
                ),
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: sexo,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    labelText: "Sexo",
                    labelStyle: TextStyle(
                      color: Colors.black38,
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                    )
                ),
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: cor,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    labelText: "Cor",
                    labelStyle: TextStyle(
                      color: Colors.black38,
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                    )
                ),
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: peso,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: "Peso",
                    labelStyle: TextStyle(
                      color: Colors.black38,
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                    )
                ),
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: idade,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: "Idade",
                    labelStyle: TextStyle(
                      color: Colors.black38,
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                    )
                ),
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: descricao,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: "Descrição",
                    labelStyle: TextStyle(
                      color: Colors.black38,
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                    )
                ),
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 60,
                alignment: Alignment.centerRight,
                decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    )
                ),
                child: SizedBox.expand(
                  child: FlatButton(
                    child: Text(
                      "Cadastrar",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.right,
                    ),
                    onPressed: (){

                      CadastrarPet pet = new CadastrarPet();
                      pet.cadastrarPet(raca.text,sexo.text, cor.text, peso.text, idade.text, descricao.text);

                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PaginaInicial(),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ]
        ),
      ),
    );
  }
}
