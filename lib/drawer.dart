import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'homepage.dart';
import 'kf_drawer.dart';

// void main() {
//   runApp(Drawer());
// }

class Drawer extends StatelessWidget {
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
      // Add more items as needed
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        body: KFDrawer(
          controller: controller,
          header: Align(
            alignment: Alignment.topLeft,
            child: Container(
              height: 102.0,  // Height of the container
              width: 100,  // Width of the container
              padding: EdgeInsets.only(left: 16.0),  // Only add padding to the left side
              child: Image.asset(
                'assets/logo2.png',
                fit: BoxFit.contain,  // Ensure the image fits well within the container without being distorted
              ),
            ),
          ),

          footer: ListTile(
            leading: Image.asset('assets/signout.png', height: 30, width: 30,),
            title: Text(
              'Sign Out',
              style: GoogleFonts.manrope(
                textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500
                ),
              ),
            ),
          ),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xff2D3D50), Color(0xff2D3D50)],
              tileMode: TileMode.repeated,
            ),
          ),
        ),
      ),
    );
  }
}


