import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String name;
  final String category;
  final String imageUrl;
  final String price;
  final bool isRecommended;
  final bool isPopular;

  const Product({
    required this.name,
    required this.category,
    required this.imageUrl,
    required this.price,
    required this.isRecommended,
    required this.isPopular,
  });

  @override
  List<Object?> get props =>
      [name, category, imageUrl, price, isRecommended, isPopular];

  static List<Product> products = [
    Product(
        name: "Sprite",
        category: "Soft Drink",
        imageUrl:
            "https://cutewallpaper.org/21/sprite-wallpapers/Sprite-HD-Wallpapers.jpg",
        price: '70',
        isRecommended: true,
        isPopular: true),
    Product(
        name: "Mirinda",
        category: "Soft Drink",
        imageUrl:
            "https://images.pexels.com/photos/764370/pexels-photo-764370.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        price: '70',
        isRecommended: true,
        isPopular: true),
    Product(
        name: "Thums-Up",
        category: "Soft Drink",
        imageUrl:
            "https://images.unsplash.com/photo-1628340814848-17c9d6ba00b9?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80",
        price: '70',
        isRecommended: true,
        isPopular: true),
    Product(
        name: "Coca-Cola",
        category: "Soft Drink",
        imageUrl:
            "https://images.unsplash.com/photo-1622483767028-3f66f32aef97?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=750&q=80",
        price: '70',
        isRecommended: true,
        isPopular: true),
    Product(
        name: "Pepsi",
        category: "Soft Drink",
        imageUrl:
            "https://images.pexels.com/photos/1292294/pexels-photo-1292294.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260",
        price: '70',
        isRecommended: true,
        isPopular: true),
    Product(
        name: "Diet Coke",
        category: "Soft Drink",
        imageUrl:
            "https://images.unsplash.com/photo-1560806674-ae686f5349ea?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=814&q=80",
        price: '70',
        isRecommended: true,
        isPopular: false),
    Product(
        name: "Mountain-Due",
        category: "Soft Drink",
        imageUrl:
            "https://images.unsplash.com/photo-1585498154575-3db0fda49f1d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1050&q=80",
        price: '70',
        isRecommended: true,
        isPopular: false),
    Product(
        name: "Mix-fruit Smoothie",
        category: "Smoothies",
        imageUrl:
            "https://images.unsplash.com/photo-1505252585461-04db1eb84625?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=352&q=80",
        price: '70',
        isRecommended: true,
        isPopular: false),
    Product(
        name: "Mango Smoothie",
        category: "Smoothies",
        imageUrl:
            "https://images.unsplash.com/photo-1524156868115-e696b44983db?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1046&q=80",
        price: '70',
        isRecommended: true,
        isPopular: false),
    Product(
        name: "Oreo Smoothie",
        category: "Smoothies",
        imageUrl:
            "https://images.unsplash.com/photo-1541658016709-82535e94bc69?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1950&q=80",
        price: '70',
        isRecommended: true,
        isPopular: false),
    Product(
        name: "Pineapple Smoothie",
        category: "Smoothies",
        imageUrl:
            "https://images.unsplash.com/photo-1607644536940-6c300b5784c5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1050&q=80",
        price: '70',
        isRecommended: true,
        isPopular: false),
    Product(
        name: "Jack Daniel's",
        category: "Alcohol",
        imageUrl:
            "https://images.unsplash.com/photo-1520091276903-2d35a24fab56?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1050&q=80",
        price: '70',
        isRecommended: true,
        isPopular: false),
    Product(
        name: "Black Label",
        category: "Alcohol",
        imageUrl:
            "https://images.unsplash.com/photo-1623357322590-c6174041f10a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1076&q=80",
        price: '70',
        isRecommended: true,
        isPopular: false),
    Product(
        name: "Barter House",
        category: "Alcohol",
        imageUrl:
            "https://images.unsplash.com/photo-1585703164392-171d7f8a0af5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1050&q=80",
        price: '70',
        isRecommended: true,
        isPopular: false),
    Product(
        name: "Bacardi",
        category: "Alcohol",
        imageUrl:
            "https://images.unsplash.com/photo-1542196824997-41821a746247?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=618&q=80",
        price: '70',
        isRecommended: true,
        isPopular: false),
    Product(
        name: "Laphroaig",
        category: "Alcohol",
        imageUrl:
            "https://images.unsplash.com/photo-1559521022-ebd3ce47608d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1053&q=80",
        price: '70',
        isRecommended: true,
        isPopular: false),
    Product(
        name: "Milk Tea",
        category: "Tea & Coffee",
        imageUrl:
            "https://images.unsplash.com/photo-1564890369478-c89ca6d9cde9?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80",
        price: '30',
        isRecommended: true,
        isPopular: false),
    Product(
        name: "Masala Tea",
        category: "Tea & Coffee",
        imageUrl:
            "https://images.unsplash.com/photo-1602158335077-18c4fe45f6ca?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=334&q=80",
        price: '30',
        isRecommended: true,
        isPopular: false),
    Product(
        name: "Red Tea",
        category: "Tea & Coffee",
        imageUrl:
            "https://images.unsplash.com/photo-1558160074-4d7d8bdf4256?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1050&q=80",
        price: '30',
        isRecommended: true,
        isPopular: false),
    Product(
        name: "Ice Tea",
        category: "Tea & Coffee",
        imageUrl:
            "https://images.unsplash.com/photo-1547825407-2d060104b7f8?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80",
        price: '30',
        isRecommended: true,
        isPopular: false),
    Product(
        name: "Lemon Tea",
        category: "Tea & Coffee",
        imageUrl:
            "https://images.unsplash.com/photo-1625574200148-c0954d241f7e?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80",
        price: '30',
        isRecommended: true,
        isPopular: false),
    Product(
        name: "Cappuccino",
        category: "Tea & Coffee",
        imageUrl:
            "https://images.unsplash.com/photo-1534234757579-8ad69d218ad4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1050&q=80",
        price: '30',
        isRecommended: true,
        isPopular: false),
    Product(
        name: "Black Coffee",
        category: "Tea & Coffee",
        imageUrl:
            "https://images.unsplash.com/photo-1536227661368-deef57acf708?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1050&q=80",
        price: '30',
        isRecommended: true,
        isPopular: false),
    Product(
        name: "French Café au Lait",
        category: "Tea & Coffee",
        imageUrl:
            "https://www.thespruceeats.com/thmb/9sKNrpMXwYxP5RjaYWY740Idg0U=/960x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/how-to-make-caffe-latte-765372-hero-01-2417e49c4a9c4789b3abdd36885f06ab.jpg",
        price: '30',
        isRecommended: true,
        isPopular: false),
    Product(
        name: "Caramel Macchiato",
        category: "Tea & Coffee",
        imageUrl:
            "https://www.thespruceeats.com/thmb/Y-H3zIgws9ioR76_IZd-gTTR2u4=/960x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/caramelmacchiato-2-2071439071b54bbcbc8f4b790f1d6a87.jpg",
        price: '30',
        isRecommended: true,
        isPopular: false),
    Product(
        name: "Pumpkin Spice Latte",
        category: "Tea & Coffee",
        imageUrl:
            "https://www.thespruceeats.com/thmb/mE-ddO9bg0Cx3Aop-XTAUdfkoAQ=/960x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/pumpkin-spice-latte-4174106-hero-01-47ecd3d5c0bf442182f349a227e7da41.jpg",
        price: '30',
        isRecommended: true,
        isPopular: false),
    Product(
        name: "Kinley",
        category: "Water",
        imageUrl:
            "https://www.coca-colaindia.com/content/dam/journey/in/en/private/our-company/kinley-light-weight.png",
        price: '30',
        isRecommended: true,
        isPopular: false),
    Product(
        name: "Aqualfina",
        category: "Water",
        imageUrl:
            "https://liquidhealth.news/wp-content/uploads/2021/06/82cfa6b27f78e75375a536e2ed06afb4-768x691.jpg",
        price: '30',
        isRecommended: true,
        isPopular: false),
    Product(
        name: "Bisleri",
        category: "Water",
        imageUrl:
            "https://i1.wp.com/crytonic.com/wp-content/uploads/2021/02/bisleri_1-1.jpg?resize=1024%2C655&ssl=1",
        price: '30',
        isRecommended: true,
        isPopular: false),
    Product(
        name: "TATA water plus",
        category: "Water",
        imageUrl:
            "https://5.imimg.com/data5/SELLER/Default/2020/9/KX/MJ/SO/66865223/drinking-water-500x500-500x500.jpg",
        price: '30',
        isRecommended: true,
        isPopular: false),
  ];
}
