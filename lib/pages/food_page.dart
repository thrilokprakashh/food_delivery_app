import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_button.dart';
import 'package:food_delivery_app/main.dart';
import 'package:food_delivery_app/models/food.dart';
import 'package:food_delivery_app/models/restaurant.dart';
import 'package:provider/provider.dart';

class FoodPage extends StatefulWidget {
  final Food food;
  final Map<Addon, bool> selectedAddons = {};
  FoodPage({super.key, required this.food}) {
    // Initially selected Addons to be false
    for (Addon addon in food.availableAddons) {
      selectedAddons[addon] = false;
    }
  }

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  // method to add to cart

  void addToCart(Food food, Map<Addon, bool> selectedAddons) {
    //close the current food page to go back menu

    Navigator.pop(context);
    //format the selected addons 
    List<Addon> currentlySelectedAddons = [];
    for (Addon addon in widget.food.availableAddons) {
      if (widget.selectedAddons[addon] == true) {
        currentlySelectedAddons.add(addon);
      }
    }
    context.read<Restaurant>().addToCart(food, currentlySelectedAddons);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // scaffold UI
        Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                // food image
                Image.asset(widget.food.imagePath),
                // food name
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.food.name,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ), //food price
                      Text(
                        '\$${widget.food.price}',
                        style: TextStyle(
                          fontSize: 16,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      //food Description
                      Text(
                        widget.food.description,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Divider(
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Add-ons",
                        style: TextStyle(
                          fontSize: 16,
                          color: Theme.of(context).colorScheme.inversePrimary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      // addons
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Theme.of(context).colorScheme.tertiary,
                            ),
                            borderRadius: BorderRadius.circular(8)),
                        child: ListView.builder(
                          padding: EdgeInsets.zero,
                          itemCount: widget.food.availableAddons.length,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            // get Individual add-on
                            Addon addon = widget.food.availableAddons[index];
                            // return checkbox UI
                            return CheckboxListTile(
                              title: Text(addon.name),
                              subtitle: Text(
                                '\$${addon.price}',
                                style: TextStyle(
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                              ),
                              value: widget.selectedAddons[addon],
                              onChanged: (bool? value) {
                                setState(() {
                                  widget.selectedAddons[addon] = value!;
                                });
                              },
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                MyButton(
                    onTap: () => addToCart(widget.food, widget.selectedAddons),
                    text: "Add to cart"),
                const SizedBox(
                  height: 25,
                ),
                // button - add to cart
              ],
            ),
          ),
        ),

        //Back button
        SafeArea(
          child: Opacity(
            opacity: 0.6,
            child: Container(
              margin: const EdgeInsets.only(left: 25),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                shape: BoxShape.circle,
              ),
              child: IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.arrow_back_ios_rounded),
              ),
            ),
          ),
        )
      ],
    );
  }
}
