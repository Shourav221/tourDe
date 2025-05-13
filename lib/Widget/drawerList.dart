import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomListTile extends StatelessWidget {
  final String title;
  final Icon leading;
  final Widget destination;
  const CustomListTile(
      {super.key,
      required this.title,
      required this.leading,
      required this.destination});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: leading,
      title: Text(
        '$title',
        style: TextStyle(
          color: Colors.black,
          fontSize: 20.sp,
          fontWeight: FontWeight.w900,
        ),
      ),
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => destination));
      },
    );
    ;
  }
}
