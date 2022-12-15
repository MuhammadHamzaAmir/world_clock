import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  int counter = 0;

  void getData() async {
    // Simulate network request for a username
    String s1 = await Future.delayed(const Duration(seconds: 3), () {
      // setState(() {
      //   counter = 4;
      // });
     return "ok1";
    });

    String s2 = await Future.delayed(const Duration(seconds: 1), () {
      // setState(() {
      //   counter = 4;
      // });
      return "ok2";
    });

    print('$s1 - $s2');
  }

  @override
  void initState() {
    super.initState();
    getData();
    print("object");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: const Text('Choose a Location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ElevatedButton(
        onPressed: (){
          setState(() {
            counter += 1;
          });
        },
        child: Text("$counter"),
    ),
    );
  }
}
