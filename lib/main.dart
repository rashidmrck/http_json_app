import 'dart:convert';

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
  void initState() {
    super.initState();
    this.getJsondata();
  }

  Future<String> getJsondata() async {
    var response = await http.get(
      //encode the url
      Uri.encodeFull(url),
      headers: {"Accept": "application/json"}
    );
    setState(() {
      var convertdatatojson = jsonDecode(response.body);
      data = convertdatatojson['results'];
    });

    return "Success";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Json App"),
      ),
      body: ListView.builder(
        itemCount: data == null ? 0 : data.length,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            
            onTap: (){},
                      child: ListTile(
              title: Text(data[index]['name']),
            ),
          );
        },
      ),
    );
  }
}
