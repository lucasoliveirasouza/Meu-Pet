
import 'package:flutter/material.dart';
import 'package:meu_pet/views/configuracao/sobre/licencas.dart';

class Sobre extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Container(
       color: Colors.pink.shade50,
       child: Container(

         padding: EdgeInsets.only(
           top: 200,
           left: 40,
           right: 40,
         ),
         child: ListView(
           children: [
             Center(
               child: SizedBox(

                 width: 128,
                 height: 128,
                 child: Image.asset("assets/cachorro.png"),
               ),
             ),
             SizedBox(
               height: 25,
             ),
             Center(
                 child: Text(
                   "MEU PET",
                   style: TextStyle(
                      color: Colors.pink,
                     fontWeight: FontWeight.bold,
                     fontSize: 50,
                   ),
                 )
             ),
             SizedBox(
               height: 15,
             ),
             Center(
               child: Text(
                 "VERSÃO 1.0.0",
                 style: TextStyle(
                   color: Colors.pink.shade400,
                   fontWeight: FontWeight.bold,
                   fontSize: 20,
                 ),
               ),
             ),
             SizedBox(
               height: 25,
             ),
             Center(
               child: Container(
                 height: 40,

                 child: FlatButton(
                   child: Text(
                     "LICENÇAS",
                     style: TextStyle(
                       color: Colors.blue,

                     ),
                   ),
                   onPressed: (){
                     Navigator.push(
                       context,
                       MaterialPageRoute(
                         builder: (context) => Licencas(),
                       ),
                     );
                   },
                 ),
               ),
             )

           ],
         ),
       ),
     ),
    );
  }
}
