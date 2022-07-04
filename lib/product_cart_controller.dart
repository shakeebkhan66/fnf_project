
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import 'Models/Product.dart';

class CartController extends GetxController {
  // TODO Add a dictionary to store the products in the cart
  final _products = {}.obs;
  get products => _products;

  get productSubTotal => _products.entries.map((product) => product.key.price
      * product.value).toList();
  get cartTotal => _products.entries.map((product) => product.key.price
      * product.value).toList()
      .reduce((value, element) => value + element)
      .toStringAsFixed(2);



  // TODO Add Product in the Dictionary
  void addProduct(Product product) {
    if (_products.containsKey(product)) {
      _products[product] += 1;
    } else {
      _products[product] = 1;
    }
    Get.snackbar(
        "Product Added", "You have added the ${product.name} to the cart",
        snackPosition: SnackPosition.BOTTOM
    );
  }

  // TODO Remove Product From The Dictionary
  void removeProduct(Product product){
    if(_products.containsKey(product) && _products[product] == 1){
      _products.removeWhere((key, value) => key == product);
    }else{
      _products[product] --;
    }
  }

}