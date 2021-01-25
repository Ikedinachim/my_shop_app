import 'package:flutter/foundation.dart';

class Product {
  final String id;
  final String title;
  final String imageUrl;
  final double price;
  final String description;
  final bool isFavorite;
  Product(
      {@required this.id,
      @required this.title,
      @required this.imageUrl,
      @required this.price,
      @required this.description,
      this.isFavorite = false});
}
