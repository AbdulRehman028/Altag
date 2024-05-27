import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'EXPERIMENT/farag/main.dart';
import 'HomeScreen_Card/UncommonCard/ProductListCard.dart';
import 'HomeScreen_Card/UncommonCard/ServiceListCard.dart';
import 'HomeScreen_Card/UncommonCard/button.dart';
import 'HomeScreen_Card/UncommonCard/card.dart';
import 'HomeScreen_Card/UncommonCard/popularServiceCard.dart';
import 'HomeScreen_Card/UncommonCard/specialoffer.dart';
import 'kf_drawer.dart';

void main() {
  runApp(MyHome());
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      home: myHomeApp(),
    );
  }
}

class myHomeApp extends StatelessWidget {
  final KFDrawerController controller = KFDrawerController(
    initialPage: MyHomePage(title: 'Home Page'),
    items: [
      KFDrawerItem.initWithPage(
        imageAsset: 'assets/home.png',
        text: Text(
          'Home',
          style: GoogleFonts.manrope(
            textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500
            ),
          ),
        ),
        page: MyHomePage(title: 'Item 1 Page'),
      ),
      KFDrawerItem.initWithPage(
        imageAsset: 'assets/calender.png',
        text: Text(
          'Appointment',
          style: GoogleFonts.manrope(
            textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500
            ),
          ),
        ),
        page: MyHomePage(title: 'Item 2 Page'),
      ),
      KFDrawerItem.initWithPage(
        imageAsset: 'assets/shop.png',
        text: Text(
          'About us',
          style: GoogleFonts.manrope(
            textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500
            ),
          ),
        ),
        page: MyHomePage(title: 'Item 3 Page'),
      ),
      KFDrawerItem.initWithPage(
        imageAsset: 'assets/lets.png',
        text: Text(
          'Order',
          style: GoogleFonts.manrope(
            textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500
            ),
          ),
        ),
        page: MyHomePage(title: 'Item 4 Page'),
      ),
      KFDrawerItem.initWithPage(
        imageAsset: 'assets/cart.png',
        text: Text(
          'Cart',
          style: GoogleFonts.manrope(
            textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500
            ),
          ),
        ),
        page: MyHomePage(title: 'Item 5 Page'),
      ),
      KFDrawerItem.initWithPage(
        imageAsset: 'assets/user.png',
        text: Text(
          'Profile',
          style: GoogleFonts.manrope(
            textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500
            ),
          ),
        ),
        page: MyHomePage(title: 'Item 6 Page'),
      ),
      KFDrawerItem.initWithPage(
        imageAsset: 'assets/Skin.png',
        text: Text(
          'Product',
          style: GoogleFonts.manrope(
            textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500
            ),
          ),
        ),
        page: MyHomePage(title: 'Item 7 Page'),
      ),
      // Add more drawer items as needed...
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: KFDrawer(
        controller: controller,
        header: Align(
          alignment: Alignment.topLeft,
          child: Container(
            height: 102.0,
            width: 100,
            padding: const EdgeInsets.only(left: 16.0),
            child: Image.asset(
              'assets/logo2.png',
              fit: BoxFit.contain,
            ),
          ),
        ),
        footer: KFDrawerItem(
          icon: const Icon(Icons.exit_to_app, color: Colors.white),
          text: Text(
            'Sign Out',
            style: GoogleFonts.manrope(
              textStyle: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ),
          onPressed: () {}, imageAsset: 'assets/signout.png',
        ),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xff2D3D50), Color(0xff2D3D50)],
          ),
        ),
      ),
    );
  }
}

class MyHomePage extends KFDrawerContent {
  MyHomePage({Key? key, required this.title});

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
             IconButton(
                icon: Image.asset(
                  'assets/menuicon.png',
                  width: 40,
                  height: 40, // Specify the height for the PNG
                ),
                onPressed: widget.onMenuPressed,
              ),
            SizedBox(width: 10),
            Expanded(
              child: Container(
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
            ),
          ],
        ),
        automaticallyImplyLeading: false,
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
                            Get.to(const MyFilter());
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

      );

  }
}
