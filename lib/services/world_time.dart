import 'package:http/http.dart';
import 'dart:convert';

class WorldTime{

  late String location;
  late String time;
  late String flag;
  late String url;

  WorldTime({required this.location, required this.flag, required this.url});


  Future<void> getTime() async {

    Map data = await get(Uri.parse("http://worldtimeapi.org/api/timezone/$url")).then((response) {
      return jsonDecode(response.body);
    });

    String dateTime = data['datetime'];
    String offset = data['utc_offset'].substring(1,3);

    DateTime now = DateTime.parse(dateTime);
    now = now.add(Duration(hours: int.parse(offset)));
    time = now.toString();
  }
}