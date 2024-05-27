import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../home.dart';

// void main() {
//   runApp(HomeCard());
// }

class HomeCard extends StatelessWidget {
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
              TextButton(
                onPressed: () {
                  // Handle button press
                },
                style: TextButton.styleFrom(
                  foregroundColor: Colors.black,
                ),
                child: Row(
                  children: <Widget>[
                    Image.asset('assets/nnn.png') // Icon// Text
                  ],
                ),
              ),
              SizedBox(width: 10), // Space between TextField and Button
              Expanded(
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
                    LastMinuteDeal(),
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

class LastMinuteDeal extends StatelessWidget {
  final List<Service> services = [
    Service(
      title: 'Face scrubbing',
      category: 'Skincare',
      rating: '4.7',
      reviewCount: 250,
      price: '45,99 USD',
      imageAsset: 'assets/deal1.png',
      deal: 'Today at 5PM',
      offer: '60,99 USD'
    ),
    Service(
      title: 'Buzz Cut',
      category: 'Haircut',
      rating: '4.7',
      reviewCount: 400,
      price: '105 USD',
      imageAsset: 'assets/deal2.png',
      deal: 'Today at 5PM',
      offer: '60,99 USD'
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 128, // Adjust the height according to your UI
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: services.length, // Use the length of services list
        itemBuilder: (BuildContext context, int index) {
          // Provide Service object directly to ServiceCard
          return DealCard(service: services[index]);
        },
      ),
    );
  }
}

class DealCard extends StatefulWidget {
  final Service service;

  const DealCard({
    Key? key,
    required this.service,
  }) : super(key: key);

  @override
  _DealCardState createState() => _DealCardState();
}
class _DealCardState extends State<DealCard> {
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
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10), // Adjust the radius according to your preference
                          child: Image.asset(
                            widget.service.imageAsset,
                            fit: BoxFit.cover,
                            height: 56,
                            width: 60,
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.service.title,
                            style: TextStyle(
                              color: Color(0xFF141414),
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              fontFamily: GoogleFonts.manrope().fontFamily,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            widget.service.category,
                            style: TextStyle(
                              color: Color(0xFF727272),
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              fontFamily: GoogleFonts.manrope().fontFamily,
                            ),
                          ),
                        ],
                      ),

                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, top: 4.0, right: 8.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const Icon(Icons.calendar_month, color: Color(0xFFC2E3FF), size: 16),
                            const SizedBox(width: 4),
                            Text(widget.service.deal ?? '',
                            style: TextStyle(
                              color: Color(0xFF2D3D50),
                              fontSize: 11,
                              fontWeight: FontWeight.w500,
                              fontFamily: GoogleFonts.manrope().fontFamily,
                            ),
                            ),
                            const Spacer(),
                            Padding(
                              padding: const EdgeInsets.only(right: 8.0,top: 4.0,),
                              child: Text(
                                widget.service.offer ?? '',
                                style: TextStyle(
                                  color: Color(0xFF8E8E8E),
                                  fontSize: 11,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: GoogleFonts.manrope().fontFamily,
                                  decoration: TextDecoration.lineThrough,
                                  decorationColor: Color(0xFF8E8E8E),
                                  decorationThickness: 1,
                                  ///
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, top: 4.0, right: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Icon(Icons.star, color: Color(0xFFC2E3FF), size: 14),
                            const SizedBox(width: 4),
                            Text(widget.service.rating),
                            Container(
                              height: 16,
                              width: 2,
                              color: const Color(0xFFC2E3FF),
                              margin: const EdgeInsets.symmetric(horizontal: 8),
                            ),
                            const Icon(Icons.person, color: Color(0xFFC2E3FF), size: 14),
                            const SizedBox(width: 4),
                            Text(widget.service.reviewCount.toString()),
                            const Spacer(),
                            Text(
                              widget.service.price,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontFamily: GoogleFonts.manrope().fontFamily,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
