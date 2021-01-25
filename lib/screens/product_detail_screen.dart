import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  static final String pageName = '/productDetailPage';
  final String imageUrl;
  final String title;
  final String description;
  ProductDetailScreen(this.imageUrl, this.title, this.description);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Detail'),
      ),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.5,
            width: double.infinity,
            child: Image.network(
              imageUrl,
              fit: BoxFit.fill,
            ),
          ),
          Text(title),
          Text(description),
        ],
      ),
    );
  }
}
