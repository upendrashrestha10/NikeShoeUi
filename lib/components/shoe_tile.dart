import 'package:ecomerse_ui/models/shoe.dart';
import 'package:flutter/material.dart';

class ShoeTile extends StatelessWidget {

  Shoe shoe ;
  void Function()?onTab;
  
  ShoeTile({super.key, required this.shoe, required this.onTab});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      width: 250,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //shoe pic
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(shoe.imagepath,
              height: 180,
              fit: BoxFit.cover,)
            ),

          // description
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(shoe.description,
            style: TextStyle(color: Colors.grey[600]),),
          ),


          //price +details
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  //shoe name
                  Text(shoe.name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),),
            
                SizedBox(height: 5,),
            
                  //price
                  Text('\$' + shoe.price, style: TextStyle(
                    color: Colors.grey
                  ),),
                  ],
                ),
            
                //plus button
                GestureDetector(
                  onTap: onTab,
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        bottomRight: Radius.circular(12),
                      )
                    ),
                    child: Icon(Icons.add, color: Colors.white,),
                  ),
                )
              ],
            ),
          )


          //button to add to cart
        ],
      ),
    );
  }
}