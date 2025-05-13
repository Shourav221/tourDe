import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class iconButtonCustom extends StatelessWidget {
  final IconData icon;
  const iconButtonCustom({super.key,required this.icon});

  @override
  Widget build(BuildContext context) {
    return  IconButton(
      onPressed: () {},
      icon: FaIcon(icon,size: 30.h, color: Colors.black,),

    );
  }
}
