import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../home.dart';

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
