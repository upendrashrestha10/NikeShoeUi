import 'package:ecomerse_ui/models/shoe.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier{
  //list od the show for sale
  List<Shoe> shoeShop = [
    Shoe(name: 'Zoom FREAK',
    price:'200', 
    description: 'The forward thinking design of his latest signature shoe.', 
    imagepath: 'assets/images/image4.png'),

    Shoe(name: 'Air Jorden',
    price:'220', 
    description: 'The forward thinking design of his latest signature shoe.', 
    imagepath: 'assets/images/image2.png'),

    Shoe(name: 'KD treys',
    price:'230', 
    description: 'The forward thinking design of his latest signature shoe.', 
    imagepath: 'assets/images/image1.png'),

    Shoe(name: 'Sneaker',
    price:'200', 
    description: 'The forward thinking design of his latest signature shoe.', 
    imagepath: 'assets/images/image3.png'),
  ];


  //list of items in user cart

  List<Shoe> userCart = [];

  // get list of show fo sale
    List <Shoe> getShoeList(){
      return shoeShop;
    }

  //get card
    List<Shoe> getUsercart(){
     return userCart;
    }
  //add items to card
  void addItemToCart (Shoe shoe){
    userCart.add(shoe);
    notifyListeners();
  }

  //remove items from card
  void removeItemFromCart(Shoe shoe){
    userCart.remove(shoe);
    notifyListeners();
  }
}