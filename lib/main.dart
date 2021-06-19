import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:web_api/models/APIModel.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    getDataFromAPI();
    return Scaffold(
      body: SafeArea(child: Center(child: Text('API Testing'))),
    );
  }

  Future<dynamic> getDataFromAPI() async {
    try {
      var url =
          'https://makemaya.com/safqa2/api/listing?keyword=Courier%20Services&page=1&serchval=p&searchby=&searchbycategory=point_of_interest&latitude=28.472115199999998&longitude=77.0834432&city=Jaipur&type=delivery';
      var data = await http.get(url);
      var jsonData = await json.decode(data.body);
      for (var js in jsonData['alllistings']) {
        APIModel model = APIModel.fromJson(js);
      }
    } catch (e) {
      print('Error caught :: ${e.toString()}');
    }
  }
}
