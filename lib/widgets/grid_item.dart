import 'package:flutter/material.dart';
import 'package:my_shop_app/screens/product_detail_screen.dart';

class GridItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String description;
  GridItem(this.imageUrl, this.title, this.description);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).push(MaterialPageRoute(
          builder: (ctx) => ProductDetailScreen(imageUrl, title, description))),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: GridTile(
          child: Image.network(imageUrl),
          footer: GridTileBar(
            backgroundColor: Colors.black45,
            leading: Icon(Icons.favorite_border),
            title: Text(title),
            trailing: Icon(Icons.shopping_cart),
          ),
        ),
      ),
    );
  }
}
