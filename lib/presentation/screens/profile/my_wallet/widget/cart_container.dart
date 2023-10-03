import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/color_resource/color_resources.dart';
import '../../../../../utils/constants/app_constants.dart';

class CrediteContainer extends StatelessWidget {
  const CrediteContainer({super.key, required this.iconWallet});
  final IconData iconWallet;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
        height: 91,
        decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            shadows: [
              BoxShadow(
                color: Color(0x0C000000),
                blurRadius: 25,
                offset: Offset(4, 5),
                spreadRadius: 0,
              )
            ]),
      child: Expanded(
        child: Row(
          children: [
            FloatingActionButton(
              backgroundColor: ColorResources.white,
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1.50, color: ColorResources.primary),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(4),
                    topRight: Radius.circular(4),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(4),
                  ),
                ),
              onPressed: (){},mini: true,
              child:  Icon(iconWallet,size:30,color: Color(0xFF2776EA)),),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Column(
                children: [
                  Text(
                    'Add To Wallet',
                    style: TextStyle(
                      color: Color(0xFF414141),
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      height: 0,
                      letterSpacing: -0.28,
                    ),
                  ),
                  AppConstants.gap10,
                  Text(
                    '10:50 Am',
                    style: TextStyle(
                      color: Color(0xFFA2A2A2),
                      fontSize: 12,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      height: 0,
                      letterSpacing: -0.24,
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Column(
                children: [
                  Text(
                    '+\$100.00',
                    style: TextStyle(
                      color: Color(0xFF2776EA),
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      height: 0,
                      letterSpacing: -0.32,
                    ),
                  ),
                  AppConstants.gap10,
                  Text(
                    'Balance : - \$360.55',
                    style: TextStyle(
                      color: Color(0xFFA2A2A2),
                      fontSize: 12,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      height: 0,
                      letterSpacing: -0.24,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
