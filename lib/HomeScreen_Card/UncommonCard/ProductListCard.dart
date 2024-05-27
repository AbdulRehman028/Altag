import 'package:flutter/cupertino.dart';

import '../home.dart';
import '../CommonCard/ServiceCard.dart';

class ProductList extends StatelessWidget {
  final List<Service> services = [
    Service(
      title: 'Clinique package',
      category: 'Products',
      rating: '4.7',
      reviewCount: 50,
      price: '100 USD',
      imageAsset: 'assets/product1.png',
    ),
    Service(
      title: 'DHC for men package',
      category: 'Products',
      rating: '4.7',
      reviewCount: 50,
      price: '105 USD',
      imageAsset: 'assets/product2.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 188, // Adjust the height according to your UI
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: services.length, // Use the length of services list
        itemBuilder: (BuildContext context, int index) {
          // Provide Service object directly to ServiceCard
          return ServiceCard(service: services[index]);
        },
      ),
    );
  }
}
