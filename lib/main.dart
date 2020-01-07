import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "http json app",
      home: Json(),
    );
  }
}

class Json extends StatefulWidget {
  @override
  _JsonState createState() => _JsonState();
}

class _JsonState extends State<Json> {
  final String url = "https://swapi.co/api/people/";
  List data;

  @override
  void initState(){
    super.initState();
    this.getJsondata();
  }

  Future<String> getJsondata()async{
    var response = await 
    return "Success";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Json App"),
      ),
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text('data'),
          );
        },
      ),
    );
  }
}
