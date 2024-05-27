import 'package:flutter/cupertino.dart';

import '../home.dart';
import '../CommonCard/ServiceCard.dart';

class ServiceList extends StatelessWidget {
  final List<Service> services = [
    Service(
      title: 'Body + head relax therapy',
      category: 'Massage',
      rating: '4.7',
      reviewCount: 50,
      price: '150 USD',
      imageAsset: 'assets/package1.png',
    ),
    Service(
      title: 'Shaving + styling',
      category: 'Shaving',
      rating: '5.8',
      reviewCount: 80,
      price: '200 USD',
      imageAsset: 'assets/package2.png',
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
