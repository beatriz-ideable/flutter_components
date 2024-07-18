import 'package:flutter/material.dart';
import 'package:flutter_components/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [

          CustomCard1(),
          SizedBox(height: 10),
          CustomCard2(name: 'Un paisaje', imageUrl: 'https://images.photowall.com/products/60869/azores-mountain-landscape-1.jpg?h=699&q=85'),
          SizedBox( height: 20 ),
          CustomCard2( imageUrl: 'https://cdn1.epicgames.com/ue/product/Screenshot/04-1920x1080-d39d5f7af4e17b162383cdf38ce97858.jpg?resize=1&w=1920',),
          SizedBox( height: 20 ),
          CustomCard2(imageUrl: 'https://photographylife.com/wp-content/uploads/2016/06/Mass.jpg'),
          SizedBox( height: 100 ),
        ],
      )
    );
  }
}