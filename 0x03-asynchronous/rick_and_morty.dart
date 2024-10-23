import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> printRmCharacters() async {
  try {
    var url = Uri.parse('https://rickandmortyapi.com/api/character');
    var response = await http.get(url);

    Map<String, dynamic> data = jsonDecode(response.body);

    List<dynamic> characters = data['results'];

    for (var character in characters) {
      print(character['name']);
    }
  } catch (e) {
    print('error caught: $e');
  }
}
