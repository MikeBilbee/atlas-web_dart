import '1-util.dart';
import 'dart:convert';

Future<String> getUserId() async {
  // Call the fetchUserData function to get the user data
  String userData = await fetchUserData();

  // Extract the user ID from the user data
  Map<String, dynamic> userDataMap = jsonDecode(userData);
  String userId = userDataMap['id'];

  // Return the user ID
  return userId;
}
