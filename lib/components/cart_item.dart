import 'package:ecommerce_app/models/cart.dart';
import 'package:ecommerce_app/models/craft.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartItem extends StatefulWidget {
  Craft craft;

  CartItem({
    super.key,
    required this.craft,
  });

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  //Remove Item From Cart
  void removeItemFromCart() {
    Provider.of<Cart>(context, listen: false).removeItemFromCart(widget.craft);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 9, 50, 111),
        borderRadius: BorderRadius.circular(8),
      ),
      margin: const EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: Image.asset(widget.craft.imagePath),
        title: Text(
          widget.craft.name,
          style: const TextStyle(color: Colors.white),
        ),
        subtitle: Text(
          widget.craft.price,
          style: const TextStyle(color: Colors.white),
        ),
        trailing: IconButton(
          icon: const Icon(Icons.delete),
          color: Colors.red,
          onPressed: removeItemFromCart,
        ),
      ),
    );
  }
}
