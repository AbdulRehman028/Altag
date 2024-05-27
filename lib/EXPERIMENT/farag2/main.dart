import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Catagery.dart';
import 'filter.dart';


void main() {
  runApp(MyAppBarApp());
}

class MyAppBarApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Advanced App Bar App',
      home: Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.only(left: 5.0),
            child: IconButton(
              icon: SvgPicture.asset('assets/menu.svg', height: 32, width: 32),
              onPressed: () {
                // Action for the menu button
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
              padding: const EdgeInsets.only(right: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextButton(
                    onPressed: () {
                      // Action for the text button
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
                ],
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            children: [
              Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      height: 40,  // Set height of the container
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8), // Set rounded border with a radius of 8
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
                  SizedBox(width: 8), // Spacing between the search bar and the button
                  IconButton(
                    icon: SvgPicture.asset('assets/Filters.svg', height: 40, width: 40), // SVG icon size adjusted
                    onPressed: () {
                      Get.to(Filter());
                      print('Filter button pressed');
                    },
                  ),
                ],
              ),
              SizedBox(height: 8), // Spacing between the search bar and the category selector
              CategorySelector(),
              Divider(
                height: 1,
                thickness: 1,
                color: Color(0xffB0B0B0),
              ),
              SizedBox(height: 24),

      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0),
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.access_time, color: Color(0xffB0B0B0)),
                    SizedBox(width: 4),
                    Text(
                      'Haircut',
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
              SizedBox(height: 14),
              Divider(
                height: 1,
                thickness: 2,
                color: Color(0xffB0B0B0),
              ),


              SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
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
              SizedBox(height: 14),
              Divider(
                height: 1,
                thickness: 2,
                color: Color(0xffB0B0B0),
              ),


              SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
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
              SizedBox(height: 14),
              Divider(
                height: 1,
                thickness: 2,
                color: Color(0xffB0B0B0),
              ),


              SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
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
              SizedBox(height: 14),
            ],
          ),

        ),
      ),

    );
  }
}
