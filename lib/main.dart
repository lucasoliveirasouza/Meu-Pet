import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:meu_pet/services/auth_service.dart';
import 'package:meu_pet/views/autenticacao/auth_check.dart';
import 'package:provider/provider.dart';

import 'firebase_options.dart';
import 'package:flutter/material.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
      MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (context) => AuthService()),
          ],
        child: MyApp(),
      )

  );
}


class MyAppTest extends StatefulWidget {
  const MyAppTest({Key? key}) : super(key: key);

  @override
  _MyAppTestState createState() => _MyAppTestState();
}

class _MyAppTestState extends State<MyAppTest> {


  @override
  Widget build(BuildContext context) {

    CollectionReference users = FirebaseFirestore.instance.collection('users');

    Future<void> addUser() {

      return users
          .add({
        'full_name': 'bolsonaro', // John Doe
        'company': 'brasil', // Stokes and Sons
        'age': '30' // 42
      })
          .then((value) => print("User Added"))
          .catchError((error) => print("Failed to add user: $error"));
    }

    return MaterialApp(home: TextButton(
    onPressed: (){
     // CadastrarUsuario();
    },
    child: Text(
        "Add User",
    )));
  }
}


class MyApp extends StatelessWidget {



  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Meu Pet',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: AuthCheck(),
    );


  }
}

