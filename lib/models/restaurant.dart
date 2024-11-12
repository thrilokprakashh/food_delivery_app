import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/cart_item.dart';
import 'package:food_delivery_app/models/food.dart';

class Restaurant extends ChangeNotifier {
  final List<Food> _menu = [
    // Burgers
    Food(
      name: "Classic Cheeseburger",
      description:
          "A juicy beef patty with melted cheddar, lettuce, tomato, and hint of onion and pickle.",
      imagePath: "",
      price: 0.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Extra bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),
    Food(
      name: "BBQ Bacon Burger",
      description:
          "Grilled beef patty topped with BBQ sauce, crispy bacon, cheddar cheese, and onion rings.",
      imagePath: "",
      price: 1.49,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Jalapenos", price: 0.79),
        Addon(name: "Extra BBQ sauce", price: 0.49),
        Addon(name: "Grilled mushrooms", price: 1.29),
      ],
    ),
    Food(
      name: "Mushroom Swiss Burger",
      description:
          "Savory beef patty with melted Swiss cheese, sautéed mushrooms, and creamy aioli.",
      imagePath: "",
      price: 1.79,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Caramelized onions", price: 0.89),
        Addon(name: "Truffle oil", price: 1.99),
        Addon(name: "Extra mushrooms", price: 1.29),
      ],
    ),
    Food(
      name: "Spicy Jalapeno Burger",
      description:
          "A fiery beef patty with pepper jack cheese, jalapenos, lettuce, and chipotle mayo.",
      imagePath: "",
      price: 1.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra jalapenos", price: 0.79),
        Addon(name: "Guacamole", price: 1.49),
        Addon(name: "Spicy pepper sauce", price: 0.99),
      ],
    ),
    Food(
      name: "Veggie Delight Burger",
      description:
          "A plant-based patty with lettuce, tomato, onion, vegan cheese, and a special sauce.",
      imagePath: "",
      price: 2.49,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Avocado", price: 1.29),
        Addon(name: "Grilled mushrooms", price: 1.29),
        Addon(name: "Vegan bacon", price: 1.79),
      ],
    ),

    // Salads
    Food(
      name: "Caesar Salad",
      description:
          "Crisp romaine lettuce, parmesan cheese, croutons, and Caesar dressing.",
      imagePath: "",
      price: 1.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Grilled chicken", price: 1.49),
        Addon(name: "Extra parmesan", price: 0.99),
      ],
    ),
    Food(
      name: "Greek Salad",
      description:
          "Tomato, cucumber, onion, olives, and feta cheese with a drizzle of olive oil.",
      imagePath: "",
      price: 2.49,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Extra feta", price: 1.29),
        Addon(name: "Olives", price: 0.79),
      ],
    ),
    Food(
      name: "Garden Salad",
      description:
          "Mixed greens, tomato, cucumber, carrots, and house dressing.",
      imagePath: "",
      price: 1.49,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Avocado", price: 1.29),
        Addon(name: "Balsamic vinaigrette", price: 0.79),
      ],
    ),
    Food(
      name: "Cobb Salad",
      description:
          "Romaine lettuce, grilled chicken, avocado, bacon, egg, and blue cheese.",
      imagePath: "",
      price: 2.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Extra bacon", price: 1.29),
        Addon(name: "Extra avocado", price: 1.49),
      ],
    ),
    Food(
      name: "Quinoa Salad",
      description:
          "Quinoa, mixed greens, tomato, cucumber, and lemon vinaigrette.",
      imagePath: "",
      price: 2.29,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Grilled chicken", price: 1.49),
        Addon(name: "Feta cheese", price: 0.99),
      ],
    ),

    // Sides
    Food(
      name: "French Fries",
      description: "Crispy golden fries seasoned with sea salt.",
      imagePath: "",
      price: 0.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Cheese sauce", price: 0.79),
        Addon(name: "Chili", price: 1.29),
      ],
    ),
    Food(
      name: "Onion Rings",
      description: "Crispy, golden fried onion rings.",
      imagePath: "",
      price: 1.29,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "BBQ sauce", price: 0.49),
        Addon(name: "Ranch dressing", price: 0.79),
      ],
    ),
    Food(
      name: "Sweet Potato Fries",
      description: "Sweet potato fries with a hint of seasoning.",
      imagePath: "",
      price: 1.49,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Spicy aioli", price: 0.79),
      ],
    ),
    Food(
      name: "Coleslaw",
      description: "Creamy, tangy coleslaw made with fresh cabbage.",
      imagePath: "",
      price: 0.79,
      category: FoodCategory.sides,
      availableAddons: [],
    ),
    Food(
      name: "Mozzarella Sticks",
      description: "Fried mozzarella sticks served with marinara sauce.",
      imagePath: "",
      price: 1.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra marinara", price: 0.49),
      ],
    ),

    // Desserts
    Food(
      name: "Chocolate Brownie",
      description: "Rich chocolate brownie with a soft center.",
      imagePath: "",
      price: 1.29,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Vanilla ice cream", price: 0.99),
      ],
    ),
    Food(
      name: "Cheesecake",
      description: "Classic cheesecake with a graham cracker crust.",
      imagePath: "",
      price: 1.79,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Strawberry topping", price: 0.79),
      ],
    ),
    Food(
      name: "Apple Pie",
      description: "Warm apple pie with a flaky crust.",
      imagePath: "",
      price: 1.49,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Vanilla ice cream", price: 0.99),
      ],
    ),
    Food(
      name: "Ice Cream Sundae",
      description:
          "Vanilla ice cream topped with chocolate sauce and a cherry.",
      imagePath: "",
      price: 1.29,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra chocolate sauce", price: 0.49),
        Addon(name: "Sprinkles", price: 0.29),
      ],
    ),
    Food(
      name: "Chocolate Chip Cookie",
      description: "Freshly baked chocolate chip cookie.",
      imagePath: "",
      price: 0.79,
      category: FoodCategory.desserts,
      availableAddons: [],
    ),

    // Drinks
    Food(
      name: "Coke",
      description: "Classic Coca-Cola.",
      imagePath: "",
      price: 0.99,
      category: FoodCategory.drinks,
      availableAddons: [],
    ),
    Food(
      name: "Orange Juice",
      description: "Freshly squeezed orange juice.",
      imagePath: "",
      price: 1.49,
      category: FoodCategory.drinks,
      availableAddons: [],
    ),
    Food(
      name: "Lemonade",
      description: "Refreshing lemonade with a hint of mint.",
      imagePath: "",
      price: 1.29,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra lemon", price: 0.49),
      ],
    ),
    Food(
      name: "Iced Tea",
      description: "Chilled iced tea with a touch of lemon.",
      imagePath: "",
      price: 1.29,
      category: FoodCategory.drinks,
      availableAddons: [],
    ),
    Food(
      name: "Coffee",
      description: "Freshly brewed coffee.",
      imagePath: "",
      price: 0.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra shot of espresso", price: 0.79),
        Addon(name: "Whipped cream", price: 0.49),
      ],
    ),
  ];

  /*

  G E T T E R S


  */
  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;
  /*

  O P E R A T I O N S

  */
  //user cart
  final List<CartItem> _cart = [];

  // add to cart
  void addToCart(Food food, List<Addon> selectedAddons) {
    //see if there is cart item already with the same  food  and selected addons

    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      // check if the food items are same

      bool isSameFood = item.food == food;

      // check if the list of selected addons are the same
      bool isSameAddons =
          ListEquality().equals(item.selectedAddons, selectedAddons);
      return isSameFood && isSameAddons;
    });
    // if item already exist,increase its, item quantity

    if (cartItem != null) {
      cartItem.quantity++;
    }
    // otherwise , add new cart item to the cart
    else {
      _cart.add(
        CartItem(food: food, selectedAddons: selectedAddons),
      );
    }
    notifyListeners();
  }
  // remove from cart

  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);
    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }

  // get total price of cart
  double getTotalPrice() {
    double total = 0.0;

    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;

      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }
      total += itemTotal * cartItem.quantity;
    }
    return total;
  }

  // get total quantity of cart
  int getTotalItemCount() {
    int totalItemCount = 0;
    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }
    return totalItemCount;
  }

  // clear cart
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  /*

  H  E L P E R S  


  */

  // generate a Receipt
  // format double value into money
  // Format list of adds into a string summery
}
