import 'package:flutter_app/helpers/x_helpers.dart';

import 'x_models.dart';

class ProductModel {
  final List<String> images;
  final String name;
  final int price;
  final int stock;
  final String description;
  final StoreModel store;

  ProductModel({
    required this.images,
    required this.name,
    required this.price,
    required this.stock,
    required this.description,
    required this.store,
  });

  String get priceFormat => price.currencyFormatRp;
}