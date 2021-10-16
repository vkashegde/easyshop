import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String name;
  final String category;
  final String imageUrl;
  final double price;
  final bool isRecommended;
  final bool isPopular;

  Product(
      {required this.name,
      required this.category,
      required this.imageUrl,
      required this.price,
      required this.isRecommended,
      required this.isPopular});

  @override
  // TODO: implement props
  List<Object?> get props => [
        name,
        category,
        imageUrl,
        price,
        isPopular,
        isRecommended,
      ];

  static List<Product> products = [
    Product(
        name: 'Smoothies #1 ',
        category: 'Smoothies',
        imageUrl:
            'https://images.unsplash.com/photo-1583577612013-4fecf7bf8f13?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1932&q=80',
        price: 250,
        isRecommended: false,
        isPopular: false),
    Product(
        name: 'Smoothies #2',
        category: 'Smoothies',
        imageUrl:
            'https://images.unsplash.com/photo-1583577612013-4fecf7bf8f13?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1932&q=80',
        price: 250,
        isRecommended: true,
        isPopular: true),
    Product(
        name: 'Smoothies #3',
        category: 'Smoothies',
        imageUrl:
            'https://images.unsplash.com/photo-1583577612013-4fecf7bf8f13?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1932&q=80',
        price: 250,
        isRecommended: true,
        isPopular: false),
    Product(
        name: 'Soft Drink #1',
        category: 'Soft Drinks',
        imageUrl:
            'https://images.unsplash.com/photo-1629203851122-3726ecdf080e?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1529&q=80',
        price: 250,
        isRecommended: false,
        isPopular: false),
    Product(
        name: 'Soft Drink #2',
        category: 'Soft Drinks',
        imageUrl:
            'https://images.unsplash.com/photo-1629203851122-3726ecdf080e?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1529&q=80',
        price: 250,
        isRecommended: false,
        isPopular: false),
    Product(
        name: 'Soft Drink #3',
        category: 'Soft Drinks',
        imageUrl:
            'https://images.unsplash.com/photo-1629203851122-3726ecdf080e?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1529&q=80',
        price: 250,
        isRecommended: true,
        isPopular: true)
  ];
}
