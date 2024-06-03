// Restaurant class

import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/models/food.dart';

class Restaurant extends ChangeNotifier{
  // list of food menu
  final List<Food> _menu = [
    // burgers
    Food(
      name: "Cheese Burger",
      description:
          "Juicy, big, loaded  hamburger with a slice of melted cheese on top of the meat patty",
      image: "/lib/images/burgers/Double & Single Cheeseburgers.jpg",
      price: 0.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(
          name: "Extra Cheese",
          price: 0.99,
        ),
        Addon(
          name: "Bacon",
          price: 1.99,
        ),
        Addon(
          name: "Avocado",
          price: 2.99,
        ),
      ],
    ),

    Food(
      name: "Aloha Burger",
      description:
          "taste of paradise between two buns, with caramelized pineapple, tangy sauce, and crisp bacon for a tropical explosion in every bite",
      image: "/lib/images/burgers/Aloha Burger.jpg",
      price: 1.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(
          name: "Crispy Onion rings",
          price: 0.99,
        ),
        Addon(
          name: "Refreshing pineapple chunks",
          price: 1.99,
        ),
        Addon(
          name: "Creamy Avocado",
          price: 2.99,
        ),
      ],
    ),

    Food(
      name: "Elk Burger",
      description:
          "Dig into a succulent elk burger – a leaner, more flavorful alternative to beef. The patty boasts a rich, earthy taste, cooked to juicy perfection.",
      image: "/lib/images/burgers/Elk Burger.jpg",
      price: 2.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(
          name: "Sharp Cheddar Cheese",
          price: 0.99,
        ),
        Addon(
          name: "Roasted Red Pepers",
          price: 0.99,
        ),
        Addon(
          name: "Huckleberry Sauce",
          price: 1.99,
        ),
      ],
    ),

    Food(
      name: "Vegan Burger",
      description:
          "Juicy, big, loaded   typically packed with a mix of vegetables, grains, peas, legumes, and healthy fats",
      image: "/lib/images/burgers/Vegan Burger.jpg",
      price: 0.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(
          name: "Marinated Portobello Mushrooms",
          price: 0.99,
        ),
        Addon(
          name: "Roasted Butternut Squash",
          price: 1.99,
        ),
        Addon(
          name: "Avocado",
          price: 2.99,
        ),
      ],
    ),

    Food(
      name: "Chicken Burger",
      description:
          "A golden-crisped chicken patty explodes with juicy flavor in a toasted bun, begging for a tangy swipe of sauce and a symphony of fresh toppings",
      image: "/lib/images/burgers/Chicken Burger.jpg",
      price: 0.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(
          name: "Crisp Lettuce",
          price: 0.99,
        ),
        Addon(
          name: "Fiery Sriracha Mayo",
          price: 1.99,
        ),
        Addon(
          name: "Melty Cheese",
          price: 0.99,
        ),
      ],
    ),

    // salads
    Food(
      name: "BBQ Chicken Ranch Pasta Salad",
      description:
          "A tender, grilled chicken basking in a creamy ranch dressing infused with smoky BBQ sauce",
      image: "/lib/images/salads/BBQ Chicken Ranch Pasta Salad_.jpg",
      price: 1.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(
          name: "Some tortilla chips",
          price: 0.99,
        ),
        Addon(
          name: "Sour cream",
          price: 1.99,
        ),
        Addon(
          name: "cherry tomatoes",
          price: 1.99,
        ),
      ],
    ),

    Food(
      name: "Green Salad",
      description:
          "A symphony of fresh, vibrant flavors in our Greek Tossed Green Salad. Tender romaine lettuce serves as a cool canvas for juicy bursts of cherry tomatoes, crisp slices of cucumber, and salty Kalamata olives.",
      image: "/lib/images/salads/Easy Greek Tossed Green Salad.jpg",
      price: 0.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(
          name: "Grilled Chicken",
          price: 1.99,
        ),
        Addon(
          name: "Pecan",
          price: 0.99,
        ),
        Addon(
          name: "Sliced apple",
          price: 2.99,
        ),
      ],
    ),

    Food(
      name: "Honey Mustard Chicken Salad",
      description:
          "Tender, shredded chicken bathed in a creamy honey mustard dressing, its sweetness balanced by the tang of the mustard",
      image:
          "/lib/images/salads/Honey Mustard Chicken Salad With Bacon & Avocado.jpg",
      price: 0.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(
          name: "Crip Greens",
          price: 0.99,
        ),
        Addon(
          name: "Crispy Bacon",
          price: 1.99,
        ),
        Addon(
          name: "Avocado",
          price: 2.99,
        ),
      ],
    ),

    Food(
      name: "Cobb Salad",
      description:
          "A flavor and protein powerhouse that'll keep you satisfied until sunset",
      image:
          "/lib/images/salads/Our Hearty Cobb Salad Will Fill You Up All Day.jpg",
      price: 1.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(
          name: "Grilled Shrimp",
          price: 0.99,
        ),
        Addon(
          name: "Shredded Cheddar",
          price: 1.99,
        ),
        Addon(
          name: "Chopped nuts",
          price: 2.99,
        ),
      ],
    ),

    Food(
      name: "Strawberry Spinach Salad",
      description:
          " Imagine a bed of baby spinach, bursting with nutrients and a subtle earthiness. Nestled amongst the greens are plump, juicy strawberries, their sweetness a delightful contrast. Toasted almonds add a satisfying crunch, while crumbled feta cheese brings a touch of salty creaminess. A light balsamic vinaigrette ties everything together, creating a symphony of textures and tastes in every bite",
      image: "/lib/images/salads/Strawberry Spinach Salad.jpg",
      price: 1.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(
          name: "Grilled chicken or shrimp",
          price: 1.99,
        ),
        Addon(
          name: "Ricotta",
          price: 1.99,
        ),
        Addon(
          name: "Mixed berries",
          price: 1.99,
        ),
      ],
    ),

    // Sides

    Food(
      name: "Bacon Wrapped Asparagus",
      description:
          "Imagine crisp asparagus spears, their grassy notes perfectly complemented by the salty smokiness of wrapped bacon. Each bite is a delightful explosion of textures – the snap of the asparagus, the satisfying chew of the bacon, and a hint of char if you choose to grill.",
      image:
          "/lib/images/sides/Bacon Wrapped Asparagus {Baked, Grilled, or Air Fryer} .jpg",
      price: 1.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(
          name: "Balsamic glaze",
          price: 1.99,
        ),
        Addon(
          name: "Cayenne pepper",
          price: 1.99,
        ),
        Addon(
          name: "Herbs such as rosemary, parsley",
          price: 1.99,
        ),
      ],
    ),

    Food(
      name: "Easy Creamy Coleslaw.",
      description:
          "A classic side combines crisp shredded cabbage with a creamy, tangy dressing bursting with flavor",
      image: "/lib/images/sides/Easy Creamy Coleslaw.jpg",
      price: 1.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(
          name: "Chopped carrots, bell peppers, or broccoli florets",
          price: 1.99,
        ),
        Addon(
          name: "Chopped apples, grapes, or dried cranberries",
          price: 1.99,
        ),
        Addon(
          name: "A splash of rice vinegar",
          price: 1.99,
        ),
      ],
    ),

    Food(
      name: "Mediterranean Roasted Vegetables.",
      description:
          "Imagine a colorful medley of fresh, seasonal vegetables, roasted to tender perfection and bursting with flavor. The natural sweetness of peppers, zucchini, and eggplant mingles with the earthy richness of red onion and cherry tomatoes. Infused with a fragrant blend of olive oil, garlic, oregano, and a hint of lemon, these vegetables take on a whole new level of deliciousness.",
      image: "/lib/images/sides/Mediterranean Roasted Vegetables.jpg",
      price: 1.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(
          name: "Crumble creamy feta cheese",
          price: 1.99,
        ),
        Addon(
          name: "Chopped tofu",
          price: 1.99,
        ),
        Addon(
          name: "Herbs like parsley and mint",
          price: 1.99,
        ),
      ],
    ),

    Food(
      name: "Roasted Brussel Sprouts with Bacon",
      description:
          "Imagine little green flavor bombs bursting onto your plate: roasted Brussels sprouts with bacon. These tiny cabbages get a beautiful caramelization in the oven, transforming their mellow flavor into nutty-sweet goodness. Crispy bacon bits intermingle, adding a salty, smoky punch that perfectly complements the Brussels sprouts",
      image: "/lib/images/sides/Roasted Brussel Sprouts with Bacon.jpg",
      price: 1.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(
          name: "Red pepper flakes or sriracha",
          price: 1.99,
        ),
        Addon(
          name: "Chopped walnuts, pecans, or almonds ",
          price: 1.99,
        ),
        Addon(
          name: "Chopped dried cranberries or pomegranate seeds ",
          price: 1.99,
        ),
      ],
    ),

    Food(
      name: "Simple Creamy Mashed Potatoes • Olive & Mango",
      description:
          "A comforting classic with a touch of luxury. Creamy mashed potatoes made with fluffy, boiled potatoes are whipped to perfection with butter and a hint of cream. The result is a smooth and flavorful side dish perfect for any occasion.",
      image:
          "/lib/images/sides/Simple Creamy Mashed Potatoes • Olive & Mango.jpg",
      price: 1.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(
          name: "Shredded cheddar, parmesan, or Gruyere cheese",
          price: 1.99,
        ),
        Addon(
          name: "Sriracha or cayenne pepper",
          price: 1.99,
        ),
        Addon(
          name: "Fried Onions",
          price: 1.99,
        ),
      ],
    ),

    // desserts
    Food(
      name: "Chocolate Chip Cookies",
      description:
          "Imagine the perfect chocolate chip cookie: crisp on the edges, chewy in the center, and bursting with pockets of melty chocolate in every bite",
      image: "/lib/images/desserts/Chocolate Chip Cookies.jpg",
      price: 1.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(
          name: "A mix of chopped dark, milk, and white chocolate ",
          price: 1.99,
        ),
        Addon(
          name: "Chopped walnuts, pecans, or hazelnuts",
          price: 1.99,
        ),
        Addon(
          name: "Dried cherries, cranberries, or chopped dried apricots",
          price: 1.99,
        ),
      ],
    ),

    Food(
      name: "Chocolate mousse",
      description:
          "Imagine a silky-smooth cloud of rich chocolate, bursting with flavor in every spoonful. The airy texture melts on your tongue, delivering a pure and intense chocolate experience.",
      image: "/lib/images/desserts/chocolate mousse.jpg",
      price: 1.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(
          name: "A warm caramel sauce",
          price: 1.99,
        ),
        Addon(
          name: "A shot of your favorite liqueur like Baileys",
          price: 1.99,
        ),
        Addon(
          name: "Chopped hazelnuts, almonds, or pistachios",
          price: 1.99,
        ),
      ],
    ),

    Food(
      name: "Chocolate Strawberry Cake",
      description:
          "Imagine a moist and decadent chocolate cake, its rich cocoa flavor perfectly complementing layers of fresh, sweet strawberries. Each bite is a symphony of textures: the fluffy cake, the juicy burst of strawberries, and a touch of creamy frosting that ties everything together.",
      image: "/lib/images/desserts/Chocolate Strawberry Cake.jpg",
      price: 1.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(
          name: "Chopped raspberries or blueberries",
          price: 1.99,
        ),
        Addon(
          name: "Rich chocolate ganache between the cake layers ",
          price: 1.99,
        ),
        Addon(
          name: "Strawberries with a touch of kirsch or Grand Marnier",
          price: 1.99,
        ),
      ],
    ),

    Food(
      name: "Mini Pecan Pies",
      description:
          "Imagine a buttery, flaky crust cradling a rich and gooey pecan filling. Each bite is a delightful explosion of flavors and textures: the sweet and nutty pecans, the gooey filling, and the satisfying crunch of the crust.",
      image: "/lib/images/desserts/Mini Pecan Pies Recipe.jpg",
      price: 1.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(
          name: "caramel sauce",
          price: 1.99,
        ),
        Addon(
          name: "Favorite fruit jam",
          price: 1.99,
        ),
        Addon(
          name: "Bourbon or rum",
          price: 1.99,
        ),
      ],
    ),

    Food(
      name: "Pistachio Honey Baklava Cheesecake",
      description:
          " A creamy, rich cheesecake filling rests on a base of crispy phyllo dough, reminiscent of the classic Middle Eastern pastry, baklava. But the magic doesn't stop there. This cheesecake is studded with vibrant green pistachios, adding a delightful nutty crunch and a touch of earthy elegance",
      image: "/lib/images/desserts/Pistachio Honey Baklava Cheesecake.jpg",
      price: 1.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(
          name: "Fresh raspberry or cherry compote ",
          price: 1.99,
        ),
        Addon(
          name: "Cardamom",
          price: 0.99,
        ),
        Addon(
          name: "Dark chocolate ganache",
          price: 1.99,
        ),
      ],
    ),

    // drinks
    Food(
      name: "Caramel Hazelnut Iced Coffee",
      description:
          " Imagine a refreshing blast of cold coffee, perfectly balanced with the rich sweetness of caramel and the nutty depth of hazelnut. Each sip is a symphony of flavors: the smooth, bold coffee, the creamy sweetness of caramel, and the subtle nuttiness of hazelnut.",
      image: "/lib/images/drinks/Caramel Hazelnut Iced Coffee.jpg",
      price: 1.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(
          name: "Vanilla ice cream",
          price: 1.99,
        ),
        Addon(
          name: "Frozen yogurt",
          price: 0.99,
        ),
        Addon(
          name: "melted chocolate sauce",
          price: 1.99,
        ),
      ],
    ),

    Food(
      name: "Easy Oreo Milkshake",
      description:
          "Indulge in a childhood favorite with a grown-up twist – our Easy Oreo Milkshake! Imagine a wave of creamy vanilla ice cream bliss, studded with chunks of those iconic black and white cookies. Each sip is a delightful dance of textures and flavors: the smooth coolness of the ice cream and the satisfying crunch of the Oreos, all perfectly blended into a rich and decadent treat",
      image: "/lib/images/drinks/Easy Oreo Milkshake.jpg",
      price: 1.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(
          name: "Chocolate ice cream",
          price: 1.99,
        ),
        Addon(
          name: "Frozen berries",
          price: 0.99,
        ),
        Addon(
          name: "A shot of your favorite chocolate liqueur like Baileys",
          price: 1.99,
        ),
      ],
    ),

    Food(
      name: "Milkshake Dessert",
      description:
          "A glass transformed into a wonderland of textures and flavors",
      image: "/lib/images/drinks/Milkshake Dessert.jpg",
      price: 1.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(
          name: "Spiked Whipped Cream",
          price: 1.99,
        ),
        Addon(
          name: "Nestle toasted marshmallows",
          price: 0.99,
        ),
        Addon(
          name: "Caramel or chocolate popcorn",
          price: 1.99,
        ),
      ],
    ),

    Food(
      name: "Redbull",
      description: "A refreshing and Tasty energy drink.",
      image: "/lib/images/drinks/redbull.jpg",
      price: 1.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(
          name: "Tropical Twist",
          price: 1.99,
        ),
        Addon(
          name: "Sugarfree",
          price: 0.99,
        ),
        Addon(
          name: "Summer Edition",
          price: 1.99,
        ),
      ],
    ),

    Food(
      name: "Strawberry Basil Lemonade",
      description:
          "Imagine a vibrant pink lemonade base bursting with the juicy sweetness of fresh strawberries and the fragrant, herbal touch of basil. Each sip is a delightful dance on your palate: the sweet and tangy lemonade, the burst of juicy fruit, and the subtle peppery coolness of basil.",
      image: "/lib/imagesdrinks/Strawberry Basil Lemonade.jpg",
      price: 1.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(
          name: "Raspberries, blueberries, or blackberries",
          price: 1.99,
        ),
        Addon(
          name: "Mint, rosemary, or even lavender",
          price: 0.99,
        ),
        Addon(
          name: " touch of honey, agave nectar, or simple syrup ",
          price: 1.99,
        ),
      ],
    ),
  ];

  /*
    G E T T E R S
  */
  List<Food> get menu => _menu;


  /*
   O P E R A T I O N S
  */

  // Add to cart

  // remove from cart

  // get total price of cart

  // get number of items in the cart

  // clear the cart

  /*
    H E L P E R S
  */

  // generate a receipt

  // format double value into money

  // format list of addons into string summary
}
