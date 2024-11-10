import 'package:flutter/material.dart';

class MyDiscriptionBox extends StatelessWidget {
  const MyDiscriptionBox({super.key});

  @override
  Widget build(BuildContext context) {
    //textstyle

    var myPrimaryTextStyle =
        TextStyle(color: Theme.of(context).colorScheme.inversePrimary);
    var mySeconderyTextStyle =
        TextStyle(color: Theme.of(context).colorScheme.primary);

    return Container(
      padding: const EdgeInsets.all(25.0),
      margin: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).colorScheme.secondary),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // delivery fee
          Column(
            children: [
              Text(
                "\$0.99",
                style: myPrimaryTextStyle,
              ),
              Text(
                "Delivery fee",
                style: mySeconderyTextStyle,
              ),
            ],
          ),

          //delivery time

          Column(
            children: [
              Text(
                "15-30 min",
                style: myPrimaryTextStyle,
              ),
              Text(
                "Delivery time",
                style: mySeconderyTextStyle,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
