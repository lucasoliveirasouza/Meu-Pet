import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';

class UsuarioServices{
   String nome ="Batata";
  CollectionReference usuarios = FirebaseFirestore.instance.collection('usuarios');

  UsuarioServices(){}

  void cadastrarUsuario(nome,email,telefone,genero,senha,endereco){
    usuarios.add({
      'nome': nome, // John Doe
      'email': email,
      'senha': senha,// Stokes and Sons
      'genero': genero,
      'endereco': endereco,
      'telefone': telefone,

    });
  }

  Future<String> existeUsuario(email) async{


    QuerySnapshot snapshot = await FirebaseFirestore.instance.collection('usuarios').get();
    snapshot.docs.forEach((d) {

        nome = d["email"];
        print(d["email"] == "lycasoliveira@gmail.com");
    });

    return nome;
  }
  String getNome(){
    existeUsuario("teste");
    nome = "feio";
    return nome;
  }

}