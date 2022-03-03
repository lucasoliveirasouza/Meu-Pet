import 'package:cloud_firestore/cloud_firestore.dart';

class CadastrarPet{
  CollectionReference pets = FirebaseFirestore.instance.collection('pets');

  CadastrarPet(){}

  void cadastrarPet(raca,sexo, cor,peso,idade, descricao){
    pets.add({
      'raca': raca,
      'sexo': sexo,
      'cor': cor,
      'peso': peso,
      'idade': idade,
      'descricao': descricao,
    });
  }
}