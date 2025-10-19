import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Fragment2 extends StatelessWidget {
  const Fragment2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              right: -111,
              top: 16,
              child: Container(
                width: 184,
                height: 184,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFFF9D048),
                ),
              ),
            ),
            Positioned(
              left: -59,
              top: 88,
              child: Container(
                width: 96,
                height: 96,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFF5C5BFD),
                ),
              ),
            ),
            Positioned(
              left: 65,
              top: 176,
              child: Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFFF9D048),
                ),
              ),
            ),
            Positioned(
              right: 32,
              top: 406,
              child: Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFF2CB4EC),
                ),
              ),
            ),
            Positioned(
              top: 60,
              left: -112,
              child: Container(
                width: 598,
                height: 398,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/imagetop.png"),

                  ),
                ),
              ),
            ),
            Column(
              children: [
                SizedBox(height: 463),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 37.0),
                  child: Text(
                    "Welcome to Learner",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.inter(
                      fontSize: 35,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                SizedBox(height: 49),
                GestureDetector(
                  onTap: () {
                    // Navigation or action logic
                    print("Get Started tapped");
                  },
                  child: Container(
                    width: 335,
                    height: 54,
                    decoration: BoxDecoration(
                      color: Color(0xFF4E74F9),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Get Started",textAlign: TextAlign.center,
                            style: GoogleFonts.inter(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 8),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                            size: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}