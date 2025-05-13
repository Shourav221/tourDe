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
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRoNE0fhlQgpWjNNtUnugodaTpsBAhO7H3AqQ&s',
              ),
              Citycart(
                name: 'Dhaka',
                Photo:
                    'https://cdn.britannica.com/69/6269-050-7EE9410A/Boat-traffic-Buriganga-River-Bangladesh-Dhaka.jpg',
              ),
              Citycart(
                name: 'Sylhet',
                Photo:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_uWQOBJt5a3hRxQUeHvsW6yeZz_155bDw7Q&s',
              ),
              Citycart(
                name: 'Rangamati',
                Photo:
                    'https://cdn.britannica.com/80/137580-050-9C6A745A/Hanging-Bridge-Kaptai-Lake-Rangamati-Bangl.jpg',
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
                      'https://hoteltechnologynews.com/wp-content/uploads/2019/08/Radisson-Hotel.jpeg',
                  status: '5 Star'),
              hotelCart(
                  hotelName: 'Hotel Momo Inn',
                  hotelPicture:
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRD_K1pnhkf5g_f5SBR2E7OOKvrha0rsvr6aw&s',
                  status: '5 Star'),
              hotelCart(
                  hotelName: 'Hotel the cox today',
                  hotelPicture:
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcScr-1n7HfOaQGZYvsPOeiQL9STKblbPVGCNQ&s',
                  status: '5 Star'),
              hotelCart(
                  hotelName: 'Sea Paral Hotel & Resort',
                  hotelPicture:
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTD_IhW5Cm9VdD28ZBSJW9et9X8WnvLNZ-D-Q&s',
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
