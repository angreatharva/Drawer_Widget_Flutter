import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer"),
      ),
      drawer: Drawer(
        child: Container(
          child: Container(color: Theme.of(context).primaryColor,
            child: ListView(
              children: [
                DrawerHeader(
                  padding: EdgeInsets.zero,
                    child: Container(
                  color: Colors.white,
                  padding: EdgeInsets.all(8.0),
                       child: Row(
                         children: [
                           CircleAvatar(
                             radius: 50,
                             backgroundImage: NetworkImage("https://media.licdn.com/dms/image/D5603AQFyHQ7RQXT2Cw/profile-displayphoto-shrink_800_800/0/1678372333628?e=2147483647&v=beta&t=sI2mwcFxuLk9hDokdujrC7fjWyVO5oKOyWXE7ZAYpcw"),
                           ),SizedBox(width: 10,),
                           Column(
                             mainAxisAlignment: MainAxisAlignment.center,
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Text("Atharva Vasant Angre"),
                               SizedBox(height: 10,),
                               Text("angreatharva08@gmail.com")
                             ],
                           )
                         ],
                       ),
                )
                ),
                ListTile(
                  leading: Icon(Icons.folder),
                  title: Text("My Files"),
                ),
                ListTile(
                  leading: Icon(Icons.group),
                  title: Text("Shared"),
                ),
                ListTile(
                  leading: Icon(Icons.star),
                  title: Text("Starred"),
                ),
                ListTile(
                  leading: Icon(Icons.upload),
                  title: Text("Upload"),
                ),
                ListTile(
                  leading: Icon(Icons.delete),
                  title: Text("Trash"),
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.logout),
                  title: Text("Logout"),
                ),

              ],
            ),),

        ),
      ),
      body: Container(),
    );
  }
}
