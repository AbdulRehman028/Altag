import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Service {
  final String title;
  final String category;
  final String rating;
  final int reviewCount;
  final String price;
  final String imageAsset;
  final String? discountText;
  final String? promotionPeriod;
  bool isLiked;

  Service({
    required this.title,
    required this.category,
    required this.rating,
    required this.reviewCount,
    required this.price,
    required this.imageAsset,
    this.discountText,
    this.promotionPeriod,
    this.isLiked = false,
  });
}

void main() {
  runApp(Home());
}


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Altag home',
      theme: ThemeData(
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor: Colors.white),
        ),
      ),
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: AppBar(
            title: TextField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.transparent,
                hintText: 'Email',
                hintStyle: TextStyle(
                  color: Colors.grey,
                  fontFamily: GoogleFonts.manrope().fontFamily,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide(color: Color(0xFF2D3D50),),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide(color: Color(0xFF2D3D50)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide(color: Color(0xFF2D3D50)),
                ),
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text(
                            'Special Offers',
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: GoogleFonts.manrope().fontFamily,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          const Spacer(),
                          TextButton(
                            onPressed: () {
                              // Handle See All action
                            },
                            style: TextButton.styleFrom(
                              foregroundColor: const Color(0xFF228EE9),
                              textStyle: TextStyle(
                                  fontSize: 13,
                                  fontFamily: GoogleFonts.manrope().fontFamily),
                            ),
                            child: const Text('See All'),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    SpecialOffer(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text(
                            'Popular service',
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: GoogleFonts.manrope().fontFamily,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          const Spacer(),
                          TextButton(
                            onPressed: () {
                              // Handle See All action
                            },
                            style: TextButton.styleFrom(
                              foregroundColor: const Color(0xFF228EE9),
                              textStyle: TextStyle(
                                  fontSize: 13,
                                  fontFamily: GoogleFonts.manrope().fontFamily),
                            ),
                            child: const Text('See All'),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    popularServices(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text(
                            'Package',
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: GoogleFonts.manrope().fontFamily,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          const Spacer(),
                          TextButton(
                            onPressed: () {
                              // Handle See All action
                            },
                            style: TextButton.styleFrom(
                              foregroundColor: const Color(0xFF228EE9),
                              textStyle: TextStyle(
                                  fontSize: 13,
                                  fontFamily: GoogleFonts.manrope().fontFamily),
                            ),
                            child: const Text('See All'),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    ServiceList(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text(
                            'Products',
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: GoogleFonts.manrope().fontFamily,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          const Spacer(),
                          TextButton(
                            onPressed: () {
                              // Handle See All action
                            },
                            style: TextButton.styleFrom(
                              foregroundColor: const Color(0xFF228EE9),
                              textStyle: TextStyle(
                                  fontSize: 13,
                                  fontFamily: GoogleFonts.manrope().fontFamily),
                            ),
                            child: const Text('See All'),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    ProductList(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

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
      height: 216, // Adjust the height according to your UI
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: services.length, // Use the length of services list
        itemBuilder: (BuildContext context, int index) {
          // Provide Service object directly to ServiceCard
          return SepecialCard(service: services[index]);
        },
      ),
    );
  }
}

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

class ServiceCard extends StatefulWidget {
  final Service service;

  const ServiceCard({
    Key? key,
    required this.service,
  }) : super(key: key);

  @override
  _ServiceCardState createState() => _ServiceCardState();
}

class _ServiceCardState extends State<ServiceCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('Card tapped: ${widget.service.title}');
      },
      child: Card(
        color: Colors.white,
        margin: const EdgeInsets.only(left: 10),
        child: Container(
          width: 253,
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    widget.service.imageAsset,
                    fit: BoxFit.cover,
                    height: 104,
                    width: double.infinity,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(widget.service.title,
                            style: TextStyle(
                              color: Color(0xFF141414),
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              fontFamily: GoogleFonts.manrope().fontFamily,
                            )),
                        const SizedBox(height: 5),
                        Text(widget.service.category,
                            style: TextStyle(
                              color: Color(0xFF727272),
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              fontFamily: GoogleFonts.manrope().fontFamily,
                            )),
                        Row(
                          children: [
                            const Icon(Icons.star,
                                color: Color(0xFFC2E3FF), size: 14),
                            const SizedBox(width: 4),
                            Text(widget.service.rating),
                            Container(
                              height: 16,
                              width: 2,
                              color: const Color(0xFFC2E3FF),
                              margin: const EdgeInsets.symmetric(horizontal: 8),
                            ),
                            const Icon(Icons.person,
                                color: Color(0xFFC2E3FF), size: 14),
                            const SizedBox(width: 4),
                            Text(widget.service.reviewCount.toString()),
                            const Spacer(),
                            // Use a Spacer to push the price to the end of the row
                            Text(
                              widget.service.price,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontFamily: GoogleFonts.manrope().fontFamily,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Positioned(
                top: 8,
                right: 8,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      widget.service.isLiked = !widget.service.isLiked;
                    });
                  },
                  child: Icon(
                    widget.service.isLiked
                        ? Icons.favorite
                        : Icons.favorite_border,
                    color: widget.service.isLiked
                        ? const Color(0xFFC2E3FF)
                        : Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SepecialCard extends StatefulWidget {
  final Service service;

  const SepecialCard({
    Key? key,
    required this.service,
  }) : super(key: key);

  @override
  _SepecialCardState createState() => _SepecialCardState();
}

class _SepecialCardState extends State<SepecialCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('Card tapped: ${widget.service.title}');
      },
      child: Card(
        color: Colors.white,
        margin: const EdgeInsets.only(left: 10),
        child: Container(
          width: 253,
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    widget.service.imageAsset,
                    fit: BoxFit.cover,
                    height: 104,
                    width: double.infinity,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0,right: 8.0,top: 8.0,bottom: 0.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(widget.service.title,
                            style: TextStyle(
                              color: Color(0xFF141414),
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              fontFamily: GoogleFonts.manrope().fontFamily,
                            )),
                        const SizedBox(height: 5),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: DottedBorder(
                            color: const Color(0xFF228EE9),
                            strokeWidth: 1,
                            dashPattern: [2, 2],
                            child: Container(
                              // padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(Icons.local_offer, color: Color(0xFF228EE9), size: 18),
                                  RichText(
                                    text: TextSpan(
                                      style: TextStyle(fontSize: 11, color: Colors.black, fontFamily: GoogleFonts.manrope().fontFamily),
                                      children: [
                                        const TextSpan(
                                          text: 'Get ', // Consider whether this part should still be fixed
                                        ),
                                        TextSpan(
                                          text: widget.service.discountText ?? '', // Safely falls back to empty string if null
                                        ),
                                        TextSpan(
                                          text: ' for a basic haircut \n', // This could be adapted or removed if needed
                                        ),
                                        TextSpan(
                                          text: widget.service.promotionPeriod ?? '', // Safely falls back to empty string if null
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 15),
                        Row(
                          children: [
                            const Icon(Icons.star,
                                color: Color(0xFFC2E3FF), size: 14),
                            const SizedBox(width: 4),
                            Text(widget.service.rating),
                            Container(
                              height: 16,
                              width: 2,
                              color: const Color(0xFFC2E3FF),
                              margin: const EdgeInsets.symmetric(horizontal: 8),
                            ),
                            const Icon(Icons.person,
                                color: Color(0xFFC2E3FF), size: 14),
                            const SizedBox(width: 4),
                            Text(widget.service.reviewCount.toString()),
                            const Spacer(),
                            // Use a Spacer to push the price to the end of the row
                            Text(
                              widget.service.price,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontFamily: GoogleFonts.manrope().fontFamily,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Positioned(
                top: 8,
                right: 8,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      widget.service.isLiked = !widget.service.isLiked;
                    });
                  },
                  child: Icon(
                    widget.service.isLiked
                        ? Icons.favorite
                        : Icons.favorite_border,
                    color: widget.service.isLiked
                        ? const Color(0xFFC2E3FF)
                        : Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
