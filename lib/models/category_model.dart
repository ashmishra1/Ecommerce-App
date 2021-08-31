import 'package:equatable/equatable.dart';

class Category extends Equatable {
  final String name;
  final String imageUrl;

  const Category({
    required this.name,
    required this.imageUrl,
  });

  @override
  List<Object?> get props => [name, imageUrl];

  static List<Category> categories = [
    Category(
        name: 'Soft Drink',
        imageUrl:
            'https://images.unsplash.com/photo-1479716809603-a2aba5be4585?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80'),
    Category(
        name: 'Smoothies',
        imageUrl:
            'https://images.unsplash.com/photo-1543573852-1a71a6ce19bc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=750&q=80'),
    Category(
        name: 'Water',
        imageUrl:
            'https://images.unsplash.com/photo-1563374928-66e57628d1b6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=750&q=80'),
    Category(
        name: 'Tea & Coffee',
        imageUrl:
            'https://images.unsplash.com/photo-1583485138683-28fefff0f728?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=750&q=80'),
    Category(
        name: 'Alcohol',
        imageUrl:
            'https://images.unsplash.com/photo-1586734565008-fbdbc166fd6c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=789&q=80'),
  ];
}
