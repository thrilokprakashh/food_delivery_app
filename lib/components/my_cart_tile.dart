import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_quantity_selector.dart';
import 'package:food_delivery_app/models/cart_item.dart';
import 'package:food_delivery_app/models/restaurant.dart';
import 'package:provider/provider.dart';

class MyCartTile extends StatelessWidget {
  final CartItem cartItem;
  const MyCartTile({super.key, required this.cartItem});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
      builder: (context, restaurant, child) => Container(
        child: Column(
          children: [
            Row(
              children: [
                // food image
                // ClipRRect(
                //   borderRadius: BorderRadius.circular(8),
                //   child: Image.asset(
                //     cartItem.food.imagePath,
                //     height: 100,
                //     width: 100,
                //   ),
                // ),
                const SizedBox(width: 10),
                //name and price
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //name
                    Text(cartItem.food.name),
                    //price
                    Text(
                      '\$' + cartItem.food.price.toString(),
                    ),
                  ],
                ),

                // Decrement or Increment quantity
                MyQuantitySelector(
                  quantity: cartItem.quantity,
                  food: cartItem.food,
                  onIncrement: () {
                    restaurant.addToCart(
                        cartItem.food, cartItem.selectedAddons);
                  },
                  onDecrement: () {
                    restaurant.removeFromCart(cartItem);
                  },
                )
              ],
            ),

            //addons
          ],
        ),
      ),
    );
  }
}
