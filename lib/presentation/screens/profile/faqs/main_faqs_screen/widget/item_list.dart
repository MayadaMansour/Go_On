import 'package:flutter/material.dart';
import 'package:go_on/utils/color_resource/color_resources.dart';

class FAQSList extends StatefulWidget {
  const FAQSList({super.key, });


  @override
  State<FAQSList> createState() => _FAQSListState();
}

class _FAQSListState extends State<FAQSList> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        ExpansionTile(
          title: Text(
            'What is go on ?',
            style: TextStyle(
              color: Color(0xFF2776EA),
              fontSize: 13,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
              height: 0,
              letterSpacing: -0.30,
            ),
          ),
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                  "Fast and Reliable Mobile Internet with Luxembourg eSIM Provider. Forget About Roaming Fees. Activate SIM card/eSIM during a minute and start to use your messengers abroad for Free. Plan your trip in advance. Amenities: Optimal & Unlimited Daily, 2GB/4GB or 10GB tariffs.",textAlign: TextAlign.justify,style: TextStyle(color: Color(0xFF525252),
                fontSize: 14,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
               ),),
            ),
          ],
        ),
        Divider(),
        ExpansionTile(
          title: Text(
            'What does go on do ?',
            style: TextStyle(
              color: Color(0xFF2776EA),
              fontSize: 13,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
              height: 0,
              letterSpacing: -0.30,
            ),
          ),
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(

    '',textAlign: TextAlign.justify,style: TextStyle(color: Color(0xFF525252),
                fontSize: 14,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
              ),),
            ),
          ],
        ),
        Divider(),
        ExpansionTile(
          title: Text(
            'How are go on profiles priced ?',
            style: TextStyle(
              color: Color(0xFF2776EA),
              fontSize: 13,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
              height: 0,
              letterSpacing: -0.30,
            ),
          ),
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: Color(0xFF525252),
                  fontSize: 14,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
              ),),
            ),
          ],
        ),
        Divider(),
        ExpansionTile(
          title: Text(
            'How are esim profiles delverd ?',
            style: TextStyle(
              color: Color(0xFF2776EA),
              fontSize: 13,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
              height: 0,
              letterSpacing: -0.30,
            ),
          ),
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "",textAlign: TextAlign.justify,style: TextStyle(color: Color(0xFF525252),
                fontSize: 14,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
              ),),
            ),
          ],
        ),
        Divider(),
      ],
    );
  }
}
