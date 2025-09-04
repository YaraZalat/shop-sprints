import 'package:flutter/material.dart';
import 'package:shop_sprints/models/product_model.dart';

import '../../../constants/color.dart';
import '../../../constants/fonts.dart';
class ItemOfGrideview extends StatelessWidget {
  const ItemOfGrideview({super.key, required this.product});
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      width:( double.infinity-20)/2,
      height: 400,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow:[
          BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              blurRadius: 8,
              offset: Offset(0, 3)// Shadow color
          )
        ] ,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 100,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  Image.asset(
                   product.image,
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: double.infinity,
                  ),
                  Container(
                    width: 30,
                    height: 30,
                    margin: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: InkWell(
                      onTap: (){
                        ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Item added to the cart\n${product.title} has been added to your cart" ),
                          duration: Duration(seconds: 2),
                        ));
                      },
                      child: Center(
                        child: Image.asset(
                          "assets/images/shopping-cart.png",
                          width: 16,
                          height: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            product.title,
            style: AppStyleFont.titleButtB(),
          ),
          const SizedBox(height: 8),

          Text(
            product.price,
            style: AppStyleFont.titleButtP(),
          ),
        ],
      ),
    );
  }
}
