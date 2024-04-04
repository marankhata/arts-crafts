import 'package:ecommerce_app/components/craft_tile.dart';
import 'package:ecommerce_app/models/cart.dart';
import 'package:ecommerce_app/models/craft.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  //Add craft to cart method

  void addCraftToCart(Craft craft) {
    Provider.of<Cart>(context, listen: false).addItemToCart(craft);

    //Alert the user when a craft is successfully added to the cart

    showDialog(
      context: context,
      builder: (context) => const AlertDialog(
        title: Text('Successfully Added!'),
        content: Text('Check your cart'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Column(
        children: [
          // Search Bar
          Container(
            padding: const EdgeInsets.all(12),
            margin: const EdgeInsets.symmetric(horizontal: 25),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Find a product or artist',
                  style: TextStyle(color: Colors.grey.shade700),
                ),
                const Icon(
                  Icons.search,
                  color: Color.fromARGB(255, 9, 50, 111),
                ),
              ],
            ),
          ),

          //Message
          // Padding(
          //   padding: const EdgeInsets.symmetric(vertical: 25.0),
          //   child: Text(
          //     "Choose your style",
          //     style: TextStyle(color: Colors.grey.shade600),
          //   ),
          // ),

          const SizedBox(height: 60),

          //Popular Products Section
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "Popular products",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
                Text(
                  "See all",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 9, 50, 111),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 10),

          //List of products for sale
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) {
                //get a craft from shop list
                Craft craft = value.getCraftList()[index];

                //return the craft
                return CraftTile(
                  craft: craft,
                  onTap: () => addCraftToCart(craft),
                );
              },
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 25.0, left: 25, right: 25),
            child: Divider(
              color: Colors.grey.shade100,
            ),
          )
        ],
      ),
    );
  }
}
