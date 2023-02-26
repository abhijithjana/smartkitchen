import 'package:http/http.dart' as http;
import 'package:smartkitchen/ip.dart';

class Hservice {
  void connect() async {
    try {
      http.Response res = await http.get(
          Uri.parse('http://192.168.210.167:3000/'),
          headers: <String, String>{
            'content-type': 'application/json; Charset=UTF-8'
          });
    } catch (e) {}
  }
}
