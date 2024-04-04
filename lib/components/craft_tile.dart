import 'package:ecommerce_app/models/craft.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CraftTile extends StatelessWidget {
  Craft craft;

  void Function()? onTap;

  CraftTile({
    super.key,
    required this.craft,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 25),
      width: 200,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //Craft Picture
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              craft.imagePath,
              fit: BoxFit.cover,
              height: 260,
              width: 200,
            ),
          ),

          //Description
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              craft.description,
              style: TextStyle(color: Colors.grey.shade600),
            ),
          ),

          //Price
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //Craft Name
                    Text(
                      craft.name,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18),
                    ),

                    const SizedBox(height: 5),

                    //Price
                    Text(
                      craft.price,
                      style: TextStyle(color: Colors.grey.shade600),
                    )
                  ],
                ),

                //plus button
                GestureDetector(
                  onTap: onTap,
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 9, 50, 111),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        bottomRight: Radius.circular(12),
                      ),
                    ),
                    child: const Icon(
                      Icons.shopping_bag_rounded,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          )

          //Add to cart button
        ],
      ),
    );
  }
}
