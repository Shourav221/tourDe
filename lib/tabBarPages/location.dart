import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class location extends StatelessWidget {
  final String name;
  final String Photo;
  final double rating;
  const location({super.key, required this.name, required this.Photo,required this.rating});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.h),
      padding: EdgeInsets.all(10.h),
      height: 160.h,
      width: 200.w,
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
                  child: Image.network('$Photo',
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
                      '$rating',
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
              '$name',
              style: TextStyle(
                color: Colors.deepPurple,
                fontWeight: FontWeight.w900,
                fontSize: 16.sp,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
