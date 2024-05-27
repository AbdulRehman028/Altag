import 'package:flutter/cupertino.dart';

import '../home.dart';
import '../CommonCard/ServiceCard.dart';

class popularServices extends StatelessWidget {
  final List<Service> services = [
    Service(
      title: 'Haircut',
      category: 'Haircut',
      rating: '4.7',
      reviewCount: 250,
      price: '70,99 USD',
      imageAsset: 'assets/service1.png',
    ),
    Service(
      title: 'Hybrid manicure',
      category: 'Shaving',
      rating: '4.7',
      reviewCount: 400,
      price: '105 USD',
      imageAsset: 'assets/service2.png',
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
