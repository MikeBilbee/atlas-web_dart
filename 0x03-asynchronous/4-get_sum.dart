import 'dart:convert';
import '4-util.dart';

Future<num> calculateTotal() async {
  try {
    String userData = await fetchUserData();
    Map<String, dynamic> userMap = jsonDecode(userData);
    String userId = userMap['id'];

    String userOrders = await fetchUserOrders(userId);
    List<dynamic> orders = jsonDecode(userOrders);

    double totalPrice = 0.0;
    for (String product in orders) {
      String productPriceStr = await fetchProductPrice(product);
      num productPrice = jsonDecode(productPriceStr);

      totalPrice += productPrice.toDouble();
    }
    return totalPrice;
  } catch (err) {
    return -1;
  }
}
