import 'package:ecomerse_ui/components/cart_items.dart';
import 'package:ecomerse_ui/models/cart.dart';
import 'package:ecomerse_ui/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder:
     (context, value, child) => 
     Padding(
       padding: const EdgeInsets.symmetric(horizontal: 20),
       child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //heading 
            Text("My Cart", 
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),),

            SizedBox(height: 10,),

            Expanded(
              child:ListView.builder(
                itemCount: value.getUsercart().length,
                itemBuilder: (context, index){
                  //get individual shoe
                  Shoe individualShoe  = value.getUsercart()[index];

                  //return the cart item
                  return CartItem(shoe: individualShoe);
                },
              ) 
            )
          ],
       ),
     )
     );
  }
}