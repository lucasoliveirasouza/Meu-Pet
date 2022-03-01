import 'package:flutter/material.dart';

class Buscas extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Padding(
          padding: const EdgeInsets.all(7.0),
          child: TextField(
            onChanged: (text) {

            },
            style: TextStyle(
              color: Colors.white,
            ),

            decoration: InputDecoration(
              iconColor: Colors.pink,
              fillColor: Colors.pink,
              hintText: "Informe o nome do pet",
              hintStyle: TextStyle(
                color: Colors.grey.shade300,
              ),

              prefixIcon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              border: InputBorder.none,
            ),
          ),
        ),
        automaticallyImplyLeading: false,
      ),
      /*body: Container(

        child: Column(

          children: <Widget>[

            Card(

              child: ListTile(
                leading: CircleAvatar(
                  radius: 18,
                  backgroundImage: AssetImage('assets/cachorro-no-calor.png'),
                  backgroundColor: Colors.transparent,
                ),
                //title: Text(_dataCurrent.name),
                title: Text(
                  "Tiquinha",
                  style: TextStyle(
                      fontWeight: FontWeight.bold
                  ),
                ),
                textColor: Colors.pink,
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.pink,
                ),
                onTap: () {


                },
              ),
            ),
            Card(
              child: ListTile(
                leading: CircleAvatar(
                  radius: 18,
                  backgroundImage: AssetImage('assets/cachorro-no-calor.png'),
                  backgroundColor: Colors.transparent,
                ),
                //title: Text(_dataCurrent.name),
                title: Text(
                  "Belinha",
                  style: TextStyle(
                      fontWeight: FontWeight.bold
                  ),
                ),
                textColor: Colors.pink,
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.pink,
                ),
                onTap: () {


                },
              ),
            ),


          ],
        ),
      ),*/
      /*appBar: AppBar(

        flexibleSpace: Container(

            child: ListTile(
              leading: Icon(
                  Icons.search,
                  color: Colors.white,
              ),
              title: TextFormField(
                style: TextStyle(
                  color: Colors.white,
                ),
                decoration: InputDecoration(

                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white, width: 2.0),
                    borderRadius: BorderRadius.circular(25.0),
                  ),


                  ),
                  //border: InputBorder.none,
                ),



              ),

        ),
        automaticallyImplyLeading: false,
        */
      /*title: TextFormField(
            style: TextStyle(
                color: Colors.white,

            ),

        ),


        leading: IconButton(
          onPressed: (){},
          icon: Icon(Icons.search),
        ),*//*


        //any one below or SizeBox()
        //any one below or SizeBox()
      ),*/

    );
  }
}
