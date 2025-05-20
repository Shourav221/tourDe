import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tour_de/Widget/hotelCart.dart';
import 'package:tour_de/buttons/iconButton.dart';

import '../Widget/CityCart.dart';

class location extends StatelessWidget {
  const location({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(right: 270.w, top: 10.h),
          child: Text(
            'Places',
            style: TextStyle(
                color: Colors.teal,
                fontSize: 22.sp,
                fontWeight: FontWeight.w900),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            // this row shows the place picture,place location, place ratting
            children: [
              Citycart(
                name: 'Cox\'s Bazar',
                Photo:
                    'asset/Images/place/cox.png',
              ),
              Citycart(
                name: 'Dhaka',
                Photo:
                    'asset/Images/place/dhaka.png',
              ),
              Citycart(
                name: 'Sylhet',
                Photo:
                    'asset/Images/place/sylhet.png',
              ),
              Citycart(
                name: 'Rangamati',
                Photo:
                    'asset/Images/place/rangamati.png',
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 270.w, top: 10.h),
          child: Text(
            'Hotel',
            style: TextStyle(
                color: Colors.teal,
                fontSize: 22.sp,
                fontWeight: FontWeight.w900),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              hotelCart(
                  hotelName: 'Hotel Redisson',
                  hotelPicture:
                      'asset/Images/hotels/radission.png',
                  status: '5 Star'),
              hotelCart(
                  hotelName: 'Hotel Momo Inn',
                  hotelPicture:
                      'asset/Images/hotels/momoin.png',
                  status: '5 Star'),
              hotelCart(
                  hotelName: 'Hotel the cox today',
                  hotelPicture:
                      'asset/Images/hotels/coxtoday.png',
                  status: '5 Star'),
              hotelCart(
                  hotelName: 'Sea Paral Hotel & Resort',
                  hotelPicture:
                      'asset/Images/hotels/seeparal.png',
                  status: '5 Star'),
            ],
          ),
        ),

        // for vehicle section
        Padding(
          padding: EdgeInsets.only(right: 270.w, top: 10.h),
          child: Text(
            'Vehicle',
            style: TextStyle(
                color: Colors.teal,
                fontSize: 22.sp,
                fontWeight: FontWeight.w900),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            iconButtonCustom(icon: FontAwesomeIcons.bus),
            iconButtonCustom(icon: FontAwesomeIcons.shuttleVan),
            iconButtonCustom(icon: FontAwesomeIcons.carSide),
            iconButtonCustom(icon: FontAwesomeIcons.motorcycle),
          ],
        ),
      ],
    );
  }
}
