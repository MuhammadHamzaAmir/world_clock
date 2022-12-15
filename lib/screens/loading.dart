import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {


  void getTime() async {

    Map data = await get(Uri.parse("http://worldtimeapi.org/api/timezone/Asia/Karachi")).then((response) {
      return jsonDecode(response.body);
    });
    String dateTime = data['datetime'];
    String offset = data['utc_offset'].substring(1,3);

    DateTime now = DateTime.parse(dateTime);
    now = now.add(Duration(hours: int.parse(offset)));
    print(now);

  }

  @override
  void initState() {
    super.initState();
    getTime();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
          child: Text('Loading Screen')
      ),
    );
  }
}
