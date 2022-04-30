import 'package:flutter/material.dart';
import 'package:meu_pet/services/auth_service.dart';
import 'package:meu_pet/services/usuario/usuario_services.dart';
import 'package:meu_pet/views/autenticacao/resetar_senha.dart';
import 'package:meu_pet/views/autenticacao/cadastrar_usuario.dart';
import 'package:meu_pet/views/home/home.dart';
import 'package:provider/provider.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final formKey = GlobalKey<FormState>();
  final senha = TextEditingController();
  final email = TextEditingController();

  bool isLogin = true;

  late String titulo;
  late String actionButton;
  late String toggleButton;

  void initState(){
    super.initState();
    setFormAction(true);
  }

  setFormAction(bool acao){
    setState(() {
      isLogin = acao;
      if(isLogin){
        titulo = "Bem vindo";
        actionButton = "Login";
        toggleButton = "Ainda não tem conta? Cadastre-se agora";
      }else{
        titulo = "Crie sua conta";
        actionButton = "Cadastrar";
        toggleButton = "Voltar ao login";
      }
    });
  }

  login() async{
    try{
      await context.read<AuthService>().login(email.text, senha.text);
    }on AuthException catch(e){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(e.message)));
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
          top: 60,
          left: 40,
          right: 40,
        ),
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            SizedBox(

              width: 128,
              height: 128,
              child: Image.asset("assets/cachorro"
                  ".png"),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: email,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  labelText: "E-mail",
                  labelStyle: TextStyle(
                    color: Colors.black38,
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                  )
              ),
              validator: (value){
                if(value!.isEmpty){
                  return "Informe o email corretamente";
                }else{
                  return null;
                }
              },
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              obscureText: true,
              controller: senha,
              decoration: InputDecoration(
                  labelText: "Senha",
                  labelStyle: TextStyle(
                    color: Colors.black38,
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                  )
              ),
              validator: (value){
                if(value!.isEmpty){
                  return "Informe a senha corretamente";
                }else if(value.length < 6){
                  return "A senha deve ter pelo menos 6 caracteres";
                }else{
                  return null;
                }
              },
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Container(
              height: 40,
              alignment: Alignment.centerRight,
              child: FlatButton(
                child: Text(
                  "Recuperar senha",
                ),
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResetarSenhaPage(),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 60,
              alignment: Alignment.centerRight,
              //color: Colors.pink,
              decoration: BoxDecoration(

                  color: Colors.pink,
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  )
              ),
              child: SizedBox.expand(
                child: FlatButton(
                  child: Text(
                    actionButton,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.right,
                  ),

                  onPressed: (){

                    login();
                  },
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 40,
              alignment: Alignment.center,
              child: FlatButton(
                child: Text(
                  toggleButton,
                ),
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CadastrarUsuarioPage(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
