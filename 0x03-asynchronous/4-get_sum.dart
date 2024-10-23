import 'dart:convert';
import '4-util.dart';

Future<double> calculateTotal() async {
  try {
    String userData = await fetchUserData();
    Map<String, dynamic> userDataMap = jsonDecode(userData);
    String userId = userDataMap['id'];

    String ordersData = await fetchUserOrders(userId);
    List<dynamic> userOrders = jsonDecode(ordersData);

    double totalPrice = 0;
    for (var order in userOrders) {
      String priceData = await fetchProductPrice(order);
      double price = double.parse(priceData);
      totalPrice += price;
    }

    return totalPrice;
  } catch (e) {
    return -1;
  }
}
