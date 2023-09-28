import 'dart:js_interop_unsafe';

import 'package:all_widget_test/src/provider/provider_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var ActionNum = Provider.of<Provider_Services>(context);
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("All Widget Test")),
      ),
      /*drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.green,
              ), //BoxDecoration
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.green),
                accountName: Text(
                  "Md. Obaidul Islam",
                  style: TextStyle(fontSize: 18),
                ),
                accountEmail: Text("mdobaiulislam0136@gmail.com"),
                currentAccountPictureSize: Size.square(50),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 165, 255, 137),
                  child: Text(
                    "O",
                    style: TextStyle(fontSize: 30.0, color: Colors.blue),
                  ), //Text
                ), //circleAvatar
              ), //UserAccountDrawerHeader
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text(' My Profile '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.book),
              title: const Text(' My Course '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.workspace_premium),
              title: const Text(' Go Premium '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.video_label),
              title: const Text(' Saved Videos '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.edit),
              title: const Text(' Edit Profile '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('LogOut'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),*/
      drawer: Drawer(
        child: ListView(
          children: [
            Padding(padding: EdgeInsets.all(0)),
            DrawerHeader(
                decoration: BoxDecoration(color: Colors.green),
                child: UserAccountsDrawerHeader(
                  accountName: Text("Md Abir Islam"),
                  accountEmail: Text("mdobaidulislam0136@gmail.com"),
                  decoration: BoxDecoration(color: Colors.green),
                  currentAccountPictureSize: Size.square(50),
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Color.fromARGB(200, 100, 200, 100),
                    child: Text("O"),
                  ),
                )),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("My Profile"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.edit),
              title: Text("Rename"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children:[ Container( 
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width / 2,
              decoration: BoxDecoration(
                  color: Colors.red,
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://cdn.pixabay.com/photo/2017/11/18/16/40/pizza-2960437_1280.jpg",
                    ),
                    fit: BoxFit.cover,
                  ),
                  border: Border.all(
                    color: Colors.blue,
                    width: 10,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.yellow,
                      offset: Offset(5.0, 5.0),
                    ),
                  ]
              ),
            ),
              SizedBox(height: 10,),
              Container(
                child:Column(
                  children: [
                    Text(ActionNum.val.toString(),style: TextStyle(fontSize:60),),
                    FloatingActionButton(
                        onPressed: (){
                          ActionNum.Increment();
                        }, child: Icon(Icons.add),
                    ),
                    SizedBox(height: 5,),
                    FloatingActionButton(
                        onPressed: (){
                          ActionNum.Decrement();
                        }, child: Icon(Icons.minimize),
                    )
                  ],
                ) ,
              )
              
            ]
          ),
        ),
      ),
    );
  }
}
