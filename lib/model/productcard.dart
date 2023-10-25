import 'package:flutter/material.dart';
import '../model/product.dart';

class ProductCard extends StatefulWidget {
  const ProductCard({super.key, required this.data});
  final product data;

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    const borderRadius = BorderRadius.only(
        topLeft: Radius.circular(20), topRight: Radius.circular(20));
    return Container(
      width: 180,
      height: 320,
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black26),
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: InkWell(
        borderRadius: borderRadius,
        onTap: () {},
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: const BoxDecoration(
                borderRadius: borderRadius,
                color: Color(0xFFeeeeee),
              ),
              child: Stack(
                children: [
                  Image.asset(widget.data.imageUrl, width: 182, height: 182),
                  Positioned(
                    top: 16,
                    right: 16,
                    child: Container(
                      padding: EdgeInsets.all(2),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(153, 220, 213, 213),
                          borderRadius: BorderRadius.circular(20)),
                      child: Icon(
                        Icons.favorite_border_outlined,
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: FittedBox(
                child: Text(
                  widget.data.name,
                  style: const TextStyle(
                    color: Color(0xFF212121),
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    fontFamily: 'YoungSerif',
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: _buildSoldPoint(4.5),
            ),
            const SizedBox(height: 10),
            // Padding(
            //   padding: const EdgeInsets.only(left: 8.0),
            //   child: Text(
            //      '\$${widget.data.price.toStringAsFixed(2)}',
            //     style: const TextStyle(
            //         fontSize: 12,
            //         fontWeight: FontWeight.bold,
            //         color: Color(0xFF212121)),
            //   ),
            // )
          ],
        ),
      ),
    );
  }

  Widget _buildSoldPoint(double star) {
    return const Row(
      children: [
        Icon(
          Icons.location_on,
          size: 20,
        ),
        SizedBox(width: 8),
        Text('Location'),
      ],
    );
  }
}
