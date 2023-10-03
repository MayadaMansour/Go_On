import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_on/utils/constants/app_constants.dart';

import '../../../../../utils/images/images.dart';

class CrediteCart extends StatelessWidget {
  const CrediteCart({super.key, required this.cardholderName, required this.expireDate, required this.cVC, required this.creditNum});
  final String cardholderName;
  final String expireDate;
  final String cVC;
  final String creditNum;

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 180,
      width:  MediaQuery.of(context).size.width,
      child: Row(
        children: [
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              itemBuilder: (context, index) {
                return  Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Stack(
                    children: [
                      const Image(image: AssetImage(Images.credit),),
                      Padding(
                        padding: const EdgeInsets.only(top: 20,left: 185),
                        child: Container(
                          width:18,
                          height: 18,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image:  AssetImage(Images.payPal),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 60,left:30),
                        child: Text(
                          creditNum,
                          style: TextStyle(
                              fontSize:15,
                              color:Color(0xFF585858),
                              fontWeight: FontWeight.w300,),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 100,left: 10),
                            child: Column(children: [
                              Text(
                                'Cardholder’s nam',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 7,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,

                                ),
                              ),
                              AppConstants.gap5,
                              Text(
                                cardholderName,
                                style: TextStyle(
                                  color: Color(0xFF585858),
                                  fontSize: 8,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              )

                            ],),
                          ),
                          AppConstants.gap20,
                          Padding(
                            padding: const EdgeInsets.only(top: 100,left: 40),
                            child: Column(children: [
                              Text(
                                'Expire date',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 7,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,

                                ),
                              ),
                              AppConstants.gap5,
                              Text(
                                expireDate,
                                style: TextStyle(
                                  color: Color(0xFF585858),
                                  fontSize: 8,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              )

                            ],),
                          ),
                          AppConstants.gap20,
                          Padding(
                            padding: const EdgeInsets.only(top: 100,left: 40),
                            child: Column(children: [
                              Text(
                                'CVC',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 7,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,

                                ),
                              ),
                              AppConstants.gap5,
                              Text(
                                cVC,
                                style: TextStyle(
                                  color: Color(0xFF585858),
                                  fontSize: 8,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              )
                            ],),
                          ),
                        ],
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height*0.55,)
        ],
      ),
    );
  }
}


 /*Padding(
padding: const EdgeInsets.all(20.0),
child: Image(image: AssetImage(Images.credit),),
); */