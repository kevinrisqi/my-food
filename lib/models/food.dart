import 'package:equatable/equatable.dart';

enum FoodCategory { fast_food, dessert, drink, snacks }

class Food extends Equatable {
  final int id;
  final String name;
  final String picturePath;
  final String description;
  final int price;
  final FoodCategory category;

  Food({
    required this.id,
    required this.name,
    required this.picturePath,
    required this.description,
    required this.price,
    required this.category
  });

  @override
  List<Object?> get props =>
      [id, name, picturePath, description, price, category];
}
  List<Food> mockFoods = [
    Food(
      id: 1,
      name: 'Pizza',
      picturePath: 'assets/img/pizza.png',
      description: 'Delicious food 2020',
      price: 50000,
      category: FoodCategory.fast_food
    ),
    Food(
      id: 2,
      name: 'Hamburger',
      picturePath: 'assets/img/hamburger.png',
      description: 'Delicious food 2020',
      price: 30000,
      category: FoodCategory.fast_food
    ),
    Food(
      id: 3,
      name: 'Double Hot Dog',
      picturePath: 'assets/img/hotdog.png',
      description: 'Delicious food 2020',
      price: 40000,
      category: FoodCategory.fast_food
    ),
    Food(
      id: 4,
      name: 'Cake Strawberry',
      picturePath: 'assets/img/cake_strawberry.png',
      description: 'Delicious food 2020',
      price: 20000,
      category: FoodCategory.dessert
    ),
    Food(
        id: 5,
        name: 'Chocolate Brownies',
        picturePath: 'assets/img/choco_brownie.png',
        description: 'Delicious food 2020',
        price: 25000,
        category: FoodCategory.dessert
    ),
  ];
