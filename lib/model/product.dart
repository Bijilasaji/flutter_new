class product {
  final String id;
  final String name;
  final String imageUrl;
  // final String price;
  final String description;

  product({
    required this.id,
    required this.name,
    required this.imageUrl,
    // required this.price,
    required this.description,
  });
}

List<product> products = [
  product(
    id: '1',
    name: 'Chair',
    imageUrl: 'assets/images/chair.jpg',
    // price: '1000',
    description: 'Description for Product 1',
  ),
  product(
    id: '2',
    name: 'Chair',
    imageUrl: 'assets/images/chair.jpg',
    // price: '1000',
    description: 'Description for Product 1',
  ),
  product(
    id: '3',
    name: 'Chair',
    imageUrl: 'assets/images/chair.jpg',
    // price: '1000',
    description: 'Description for Product 1',
  ),
  product(
    id: '4',
    name: 'Chair',
    imageUrl: 'assets/images/chair.jpg',
    // price: '1000',
    description: 'Description for Product 1',
  ),
];
