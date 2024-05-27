import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../farag2/filter.dart';
import 'BNBCP.dart';
import 'Catagery.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bottom Nav Bar V2',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyFilter(),
    );
  }
}

class MyFilter extends StatefulWidget {
  const MyFilter({Key? key}) : super(key: key);

  @override
  State<MyFilter> createState() => _MyFilterState();
}

class _MyFilterState extends State<MyFilter> {
  int currentIndex = 0;

  Widget _buildNavItem(String asset, String activeAsset, int index, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          icon: currentIndex == index ? SvgPicture.asset(activeAsset, height: 24, width: 24,)
              : SvgPicture.asset(asset, height: 24, width: 24,),
          onPressed: () {
            setState(() {
              currentIndex = index;
            });
          },
        ),
        Padding(
          padding: const EdgeInsets.only(top: 6), // Space between icon and text
          child: Text(
            label,
            style: GoogleFonts.manrope(
              fontWeight: FontWeight.w500,
              color: Color(0xff2C3D50),
              fontSize: 12,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 8.0), // Padding for the menu icon
          child: IconButton(
            icon: SvgPicture.asset('assets/menu.svg', height: 32, width: 32),
            onPressed: () {
              print('Menu button pressed');
            },
          ),
        ),
        title: Text('Search',
          style: GoogleFonts.manrope(
            fontWeight: FontWeight.w700,
            color: Color(0xff2C3D50),
            fontSize: 16,
          ),
        ),
        centerTitle: true,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 12.0), // Padding for the cancel button
            child: TextButton(
              onPressed: () {
                print('Cancel button pressed');
              },
              child: Text(
                'Cancel',
                style: GoogleFonts.manrope(
                  fontWeight: FontWeight.w600,
                  color: Color(0xffEB3F46),
                  fontSize: 12,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(  // Padding for the entire search row
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    height: 40,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        prefixIcon: Icon(Icons.search, size: 16, color: Color(0xffB0B0B0)),
                        labelText: 'Search',
                        labelStyle: GoogleFonts.manrope(
                          fontWeight: FontWeight.w600,
                          color: Color(0xffB0B0B0),
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 8),
                IconButton(
                  icon: SvgPicture.asset('assets/Filters.svg', height: 40, width: 40),
                  onPressed: () {
                    Get.to(Filter());
                    print('Filter button pressed');
                  },
                ),
              ],
            ),
          ),
          SizedBox(height: 8),
          CategorySelector(),
          Divider(
            height: 1,
            thickness: 1,
            color: Color(0xffB0B0B0),
          ),
          SizedBox(height: 24),
          Padding(  // Padding for the "Previous searches" label
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Previous searches',
                  style: GoogleFonts.manrope(
                    fontWeight: FontWeight.w700,
                    color: Color(0xff000000),
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 24),
          Padding(  // Padding for each search item
            padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.access_time, color: Color(0xffB0B0B0)),
                SizedBox(width: 4),
                Text(
                  'Body + head relax therapy',
                  style: GoogleFonts.manrope(
                    fontWeight: FontWeight.w600,
                    color: Color(0xff141414),
                    fontSize: 16,
                  ),
                ),
                Spacer(),
                Icon(Icons.close, color: Color(0xffB0B0B0)),
              ],
            ),
          ),
          const Divider(
            height: 1,
            thickness: 2,
            color: Color(0xffB0B0B0),
          ),
          SizedBox(height: 24),
          Padding(  // Padding for each search item
            padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.access_time, color: Color(0xffB0B0B0)),
                SizedBox(width: 4),
                Text(
                  'Massage',
                  style: GoogleFonts.manrope(
                    fontWeight: FontWeight.w600,
                    color: Color(0xff141414),
                    fontSize: 16,
                  ),
                ),
                Spacer(),
                Icon(Icons.close, color: Color(0xffB0B0B0)),
              ],
            ),
          ),
          const Divider(
            height: 1,
            thickness: 2,
            color: Color(0xffB0B0B0),
          ),
          SizedBox(height: 24),
          Padding(  // Padding for each search item
            padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.access_time, color: Color(0xffB0B0B0)),
                SizedBox(width: 4),
                Text(
                  'Hybrid manicure',
                  style: GoogleFonts.manrope(
                    fontWeight: FontWeight.w600,
                    color: Color(0xff141414),
                    fontSize: 16,
                  ),
                ),
                Spacer(),
                Icon(Icons.close, color: Color(0xffB0B0B0)),
              ],
            ),
          ),
          const Divider(
            height: 1,
            thickness: 2,
            color: Color(0xffB0B0B0),
          ),
          // Additional items can continue here
        ],
      ),
      bottomNavigationBar: Stack(
        children: [
          Container(
            height: 93,
            width: size.width,
            child: Stack(
              children: [
                CustomPaint(
                  size: Size(size.width, 93),
                  painter: BNBCustomPainter(),
                ),
                Center(
                  heightFactor: 0.6,
                  child: FloatingActionButton(
                    onPressed: () {},
                    backgroundColor: Color(0xFF2C3D50),
                    elevation: 0.1,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(64)),
                    child: currentIndex == 4
                        ? SvgPicture.asset('assets/calendar_pressed.svg', height: 24, width: 24,)
                        : SvgPicture.asset('assets/calendar.svg', height: 24, width: 24,),
                  ),
                ),
                Container(
                  width: size.width,
                  height: 93,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildNavItem('assets/home.svg', 'assets/home2.svg', 0, 'Home'),
                      _buildNavItem('assets/heart.svg', 'assets/heart2.svg', 1, 'Favourite'),
                      SizedBox(width: size.width * 0.20),
                      _buildNavItem('assets/bell.svg', 'assets/bell2.svg', 2, 'Notification'),
                      _buildNavItem('assets/user.svg', 'assets/user2.svg', 3, 'Profile'),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
