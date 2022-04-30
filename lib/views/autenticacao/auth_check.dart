
import 'package:flutter/material.dart';
import 'package:meu_pet/services/auth_service.dart';
import 'package:meu_pet/views/autenticacao/login.dart';
import 'package:meu_pet/views/home/home.dart';
import 'package:provider/provider.dart';

class AuthCheck extends StatefulWidget {
  const AuthCheck({Key? key}) : super(key: key);

  @override
  _AuthCheckState createState() => _AuthCheckState();
}

class _AuthCheckState extends State<AuthCheck> {
  @override
  Widget build(BuildContext context) {
    AuthService auth = Provider.of<AuthService>(context);
    if(auth.isLoading){
      return loading();
    }else if(auth.usuario == null){
      return Login();
    }else{
      return PaginaInicial();
    }
  }
  loading(){
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
