import 'package:ecommerce_app/models/craft.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  // list of crafts for sale
  List<Craft> craftShop = [
    Craft(
        name: "Planter",
        price: "MWK 80,000",
        imagePath: 'lib/images/planter.jpg',
        description: "Planter"),
    Craft(
        name: "Couple",
        price: "MWK 110,000",
        imagePath: 'lib/images/couple.jpg',
        description: "Wooden Couple Sculpture"),
    Craft(
        name: "Africa Earring",
        price: "MWK 20,000",
        imagePath: 'lib/images/earring.jpg',
        description: "African Earring"),
    Craft(
        name: "Women",
        price: "MWK 190,000",
        imagePath: 'lib/images/women.jpg',
        description: "Women Painting"),
    Craft(
        name: "Ke_Life",
        price: "MWK 60,000",
        imagePath: 'lib/images/ke_life.jpg',
        description: "Ke_Life Painting"),
  ];

  //list of items in users cart

  List<Craft> userCart = [];

  //get list of crafts for sale

  List<Craft> getCraftList() {
    return craftShop;
  }

  //get cart

  List<Craft> getUserCart() {
    return userCart;
  }

  //add items to cart

  void addItemToCart(Craft craft) {
    userCart.add(craft);
    notifyListeners();
  }

  //remove items from cart
  void removeItemFromCart(Craft craft) {
    userCart.remove(craft);
    notifyListeners();
  }
}
