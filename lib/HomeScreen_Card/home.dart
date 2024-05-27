import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'UncommonCard/ProductListCard.dart';
import 'UncommonCard/ServiceListCard.dart';
import 'UncommonCard/popularServiceCard.dart';
import 'UncommonCard/specialoffer.dart';
import 'UncommonCard/button.dart';
import 'UncommonCard/card.dart';

class Service {
  final String title;
  final String category;
  final String rating;
  final int reviewCount;
  final String price;
  final String imageAsset;
  final String? discountText;
  final String? promotionPeriod;
  final String? deal;
  final String? offer;
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
    this.deal,
    this.offer,
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
        appBar: AppBar(
          title: Row(
            children: <Widget>[
              // Space between TextField and Button
              IconButton(
                icon: Image.asset(
                  'assets/menuicon.png',
                  width: 40,
                  height: 40, // Specify the height for the PNG
                ),
                onPressed: () {},
              ),
              SizedBox(width: 8),
              Container(
                height: 40,
                width: 275,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search',
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: Colors.white, width: 2.0),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          backgroundColor: Colors.white, // Adjust the AppBar's background color
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
                    ButtonListWithImages(),
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
                    LastMinuteDeal(),
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
