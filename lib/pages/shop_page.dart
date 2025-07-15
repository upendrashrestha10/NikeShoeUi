import 'package:ecomerse_ui/components/shoe_tile.dart';
import 'package:ecomerse_ui/models/cart.dart';
import 'package:ecomerse_ui/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {

  //add shoe to cart
  void addShoeToCart(Shoe shoe){
    Provider.of<Cart>(context, listen: false).addItemToCart(shoe);

    //alert the user, shoe sucessfully added
    showDialog(
      context: context, 
      builder: (context) => AlertDialog(
        title: Text("Sucessfully added!"),
        content: Text("Check your cart"),
      )
      );
  }
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context, value, child) => Column(
        //search bar
          children: [
            Container(
              padding: EdgeInsets.all(15),
              margin: EdgeInsets.symmetric(horizontal: 25),
              height: 50,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(8)
              ),
      
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Search"),
                  Icon(Icons.search),
                ],
              ),
      
            ),
      
          //message
      
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Text("everyone flies... some fly longer thant others",
            style: TextStyle(
              color: Colors.grey[600],
            ),),
          ),
      
          // hot picks
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text("Hot Picks 🔥",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),),
      
                Text("See all",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                  fontSize: 14,
      
                ),)
              ],
            ),
          ),
      
      //list of shoes for sale
          Expanded(
            child: ListView.builder(
              itemCount: 4,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                //get a shoe from shoe list 
                Shoe shoe =value.getShoeList()[index];

                //return the shoe
                return ShoeTile(
                  shoe: shoe,
                  onTab: () => addShoeToCart(shoe),
                );
              } )),
      
      
         
        ], 
      ),
    );
  }
}