import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Citycart extends StatelessWidget {
  final String name;
  final String Photo;
  const Citycart({
    super.key,
    required this.name,
    required this.Photo,
  });

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
          ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset('$Photo',
                  fit: BoxFit.cover, height: 123.h, width: 180.h)),
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
