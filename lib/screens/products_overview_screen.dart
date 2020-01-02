import 'package:flutter/material.dart';
import '../models/product.dart';
import '../widgets/product_item.dart';

class ProductOverviewScreen extends StatelessWidget {

  final List<Product> testProducts = [
    Product(
      id: '1',
      title: 'Pokemon Shield',
      description: 'Game of childhood',
      price: 79.99,
      imageUrl: 'https://cdn.wccftech.com/wp-content/uploads/2019/11/sword-shield-pokemon.jpg'
    ),
    Product(
      id: '2',
      title: 'Mario Kart',
      description: 'Game of Party',
      price: 69.99,
      imageUrl: 'https://i.ytimg.com/vi/a3o_ZKWi-OU/maxresdefault.jpg'
    ),
    Product(
      id: '3',
      title: 'NBA 2019',
      description: 'Game of Sport',
      price: 59.99,
      imageUrl: 'https://d8mkdcmng3.imgix.net/8794/pc-and-video-games-games-switch-nba-2k19-nintendo-1.jpg?auto=format&bg=0FFF&fit=fill&h=600&q=100&w=600&s=2e2270c083d09840eb8abb4973f346db'
    ),
     Product(
      id: '4',
      title: 'NBA 2019',
      description: 'Game of Sport',
      price: 59.99,
      imageUrl: 'https://ih0.redbubble.net/image.485684662.4429/flat,550x550,075,f.u2.jpg'
    ),
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(
        title: Text('Game Bois'),
        ),
        body: GridView.builder(
          padding: const EdgeInsets.all(10),
          itemCount: testProducts.length,
          itemBuilder: (ctx, i) => ProductItem(
              testProducts[i].id, 
              testProducts[i].title, 
              testProducts[i].imageUrl
            ),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, 
            childAspectRatio: 3/2, 
            crossAxisSpacing: 15, 
            mainAxisSpacing: 10
          ),
        ),
    );
  }
}