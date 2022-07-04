import 'dart:convert';
/// id : 1
/// name : "Dalda Ghee"
/// uom : "KG"
/// weight : "1.000"
/// price : "570.00"
/// expiry_date : "2022-07-28"

Product productFromJson(String str) => Product.fromJson(json.decode(str));
String productToJson(Product data) => json.encode(data.toJson());
class Product {
  Product({
      int? id, 
      String? name, 
      String? uom, 
      String? weight, 
      String? price, 
      String? expiryDate,}){
    _id = id;
    _name = name;
    _uom = uom;
    _weight = weight;
    _price = price;
    _expiryDate = expiryDate;
}

  Product.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _uom = json['uom'];
    _weight = json['weight'];
    _price = json['price'];
    _expiryDate = json['expiry_date'];
  }
  int? _id;
  String? _name;
  String? _uom;
  String? _weight;
  String? _price;
  String? _expiryDate;

  int? get id => _id;
  String? get name => _name;
  String? get uom => _uom;
  String? get weight => _weight;
  String? get price => _price;
  String? get expiryDate => _expiryDate;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['uom'] = _uom;
    map['weight'] = _weight;
    map['price'] = _price;
    map['expiry_date'] = _expiryDate;
    return map;
  }

}