import 'package:flutter/material.dart';
import 'package:my_shop_app/models/product_model.dart';
import 'package:my_shop_app/widgets/grid_item.dart';
import '../widgets/drawer.dart';
import '../widgets/badge.dart';

class ProductOverviewScreen extends StatelessWidget {
  static final String pageName = '/productOverviewScreen';

  final List<Product> loadedProducts = [
    Product(
      id: 'p1',
      title: 'Red Shirt',
      description: 'A red shirt - it is pretty red!',
      price: 29.99,
      imageUrl:
          'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
    ),
    Product(
      id: 'p2',
      title: 'Trousers',
      description: 'A nice pair of trousers.',
      price: 59.99,
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e8/Trousers%2C_dress_%28AM_1960.022-8%29.jpg/512px-Trousers%2C_dress_%28AM_1960.022-8%29.jpg',
    ),
    Product(
      id: 'p3',
      title: 'Yellow Scarf',
      description: 'Warm and cozy - exactly what you need for the winter.',
      price: 19.99,
      imageUrl:
          'https://live.staticflickr.com/4043/4438260868_cc79b3369d_z.jpg',
    ),
    Product(
      id: 'p4',
      title: 'A Pan',
      description: 'Prepare any meal you want.',
      price: 49.99,
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/1/14/Cast-Iron-Pan.jpg/1024px-Cast-Iron-Pan.jpg',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(
        title: Text('MyShop'),
        actions: [
          PopupMenuButton(
              child: Icon(Icons.more_vert),
              onSelected: (value) => print(value),
              itemBuilder: (ctx) {
                return [
                  PopupMenuItem(
                    child: Text('show Favorite'),
                    value: 0,
                  ),
                  PopupMenuItem(
                    child: Text('show all'),
                    value: 1,
                  ),
                ];
              }),
          Badge('1') // pass in a number to display
        ],
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(20),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 3 / 2,
            crossAxisCount: 2),
        itemBuilder: (ctx, index) {
          return GridItem(loadedProducts[index].imageUrl,
              loadedProducts[index].title, loadedProducts[index].description);
        },
        itemCount: loadedProducts.length,
      ),
    );
  }
}
