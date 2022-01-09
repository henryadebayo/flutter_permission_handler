import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  void checkPermissionStatus(){
     var status = Permission.location.status;
     if(status.isDenied == true){ Permission.location.request();}
  }

@override
  void initState() {
  setState(() {
   checkPermissionStatus();
   print(Permission.location.status.toString());
  });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}