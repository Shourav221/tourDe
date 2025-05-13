import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class hotelCart extends StatelessWidget {
  final String hotelName;
  final String hotelPicture;
  final String status;
  const hotelCart({super.key,required this.hotelName,required this.hotelPicture, required this.status});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.h),
      padding: EdgeInsets.all(10.h),
      height: 160.h,
      width: 210.w,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.r),
          boxShadow: [
            BoxShadow(
              color: Colors.deepPurple,
              offset: Offset(4, 4),
              blurRadius: 10.r,
            )
          ]),
      child: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network('$hotelPicture',
                      fit: BoxFit.cover, height: 123.h, width: 180.h)),
              Positioned(
                bottom: 10.h,
                left: 10.w,
                child: Container(
                  height: 20,
                  padding: EdgeInsets.all(5),
                  color: Colors.white,
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      '$status',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.sp,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 1.h),
            child: Text(
              '$hotelName',
              style: TextStyle(
                color: Colors.deepPurple,
                fontWeight: FontWeight.w900,
                fontSize: 16.sp,
              ),
            ),
          ),
        ],
      ),
    );;
  }
}
