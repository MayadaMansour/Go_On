import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_on/utils/color_resource/color_resources.dart';
import 'package:go_on/utils/images/images.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key, this.isHome});

  final bool? isHome;

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: ColorResources.primary,
      backgroundColor: Colors.white,
      elevation: 0,
      selectedLabelStyle:  const TextStyle(fontSize: 0),
      showSelectedLabels: false,
      unselectedItemColor: const Color(0xffB0B0B0),
      currentIndex:0,
      onTap: (index){},
      items: [
        const BottomNavigationBarItem(icon: Text(''),label: ''),
        BottomNavigationBarItem(
            icon:InkWell(
              onTap: (){
                // Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const HomeScreen(),), (route) => false);
              },
              child: Container(
                width: 80,
                  decoration: BoxDecoration(color:widget.isHome==true?ColorResources.primary:ColorResources.white,borderRadius: const BorderRadius.only(topLeft:
                  Radius.circular(50),topRight: Radius.circular(50)) ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 10),
                    child: SvgPicture.asset(widget.isHome==true?Images.signUpImg:Images.signUpImg,height: 20,color:widget.isHome==true?ColorResources.white:ColorResources.primary),
                  )),
            ),label: ''),
        const BottomNavigationBarItem(icon: Text(''),label: ''),
      ],);
  }
}
