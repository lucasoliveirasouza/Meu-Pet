import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';

class UsuarioServices{

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

  Future<int> existeUsuario(email) async{
    int num = 0;
    QuerySnapshot snapshot = await FirebaseFirestore.instance.collection('usuarios').get();
    snapshot.docs.forEach((d) {
        if(d["email"] == email){
         num = 1;
        }

    });

    return num;
  }


}