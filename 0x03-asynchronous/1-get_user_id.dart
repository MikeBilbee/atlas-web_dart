import '1-util.dart';
import 'dart:convert';

Future<String> getUserId() async {
  String userData = await fetchUserData();

  Map<String, dynamic> userDataMap = jsonDecode(userData);
  String userId = userDataMap['id'];

  return userId;
}
