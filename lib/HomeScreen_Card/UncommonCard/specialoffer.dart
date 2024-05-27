import 'package:flutter/cupertino.dart';
import '../home.dart';
import 'SpecialCard.dart';

class SpecialOffer extends StatelessWidget {
  final List<Service> services = [
    Service(
      title: 'Haircut',
      category: 'Haircut',
      rating: '4.7',
      reviewCount: 250,
      price: '70,99 USD',
      imageAsset: 'assets/special1.png',
      discountText: '20% off',
      promotionPeriod: 'until 05/30/2024',
    ),
    Service(
      title: 'Hybrid manicure',
      category: 'Shaving',
      rating: '4.7',
      reviewCount: 400,
      price: '105 USD',
      imageAsset: 'assets/speacial2.png',
      discountText: '20% off',
      promotionPeriod: 'until 05/30/2024',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 216,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: services.length,
        itemBuilder: (BuildContext context, int index) {
          return SepecialCard(service: services[index]);
        },
      ),
    );
  }
}