import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TitleLogo extends StatelessWidget {
  const TitleLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 20.sp),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Blog",
              style: TextStyle(
                fontSize: 40.sp,
                color: Color.fromARGB(255, 43, 56, 178),
                fontWeight: FontWeight.w500,
              ),
            ),
           
            Text(
              "-",
              style: TextStyle(
                fontSize: 40.sp,
                color: Color.fromARGB(126, 0, 0, 0),
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              " A",
              style: TextStyle(
                fontSize: 40.sp,
                color: Colors.black,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              "p",
              style: TextStyle(
                fontSize: 40.sp,
                color: Colors.black,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              "p",
              style: TextStyle(
                fontSize: 40.sp,
                color: Colors.black,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
    ;
  }
}
