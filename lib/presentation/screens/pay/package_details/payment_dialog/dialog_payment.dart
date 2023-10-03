import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_on/presentation/widgets/button/custom_button.dart';
import 'package:go_on/utils/constants/app_constants.dart';
import '../../../../../utils/color_resource/color_resources.dart';
import '../../../../widgets/textFeild/custom_text_field.dart';
import '../../widget/country_list.dart';
import 'done_dialog.dart';

class DialogPayment extends StatelessWidget {
 

  const DialogPayment({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: ShapeDecoration(
          color: Colors.white.withOpacity(0.2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          shadows: [
            BoxShadow(
              color: Color(0x0C000000),
            )
          ],
        ),
        child: AlertDialog(
          content: SizedBox(
            height: MediaQuery.of(context).size.height,
            width:  MediaQuery.of(context).size.width,
            child: SingleChildScrollView(
              child: Container(
                height: MediaQuery.of(context).size.height,
                width:  MediaQuery.of(context).size.width,
                child: Expanded(
                  child: Stack(
                    children: [
                      Column(
                        children: [
                          Container(
                            alignment: Alignment.topLeft,
                            child: GestureDetector(
                              onTap: (){
                                Navigator.of(context).pop();
                              },
                              child: Align(
                                alignment: Alignment.topRight,
                                child: CircleAvatar(
                                  radius: 12.0,
                                  backgroundColor: Colors.blueAccent,
                                  child: Icon(Icons.close, color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                          Text(
                            'Add Your Payment Information',
                            style: TextStyle(
                              color: Color(0xFF414141),
                              fontSize: 16,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          AppConstants.gap20,
                          AppConstants.gap20,
///////////////////////////////////////////////////////////////////////////Card Information
                          Container(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Card Information',
                              style: TextStyle(
                                color: Color(0xFF414141),
                                fontSize: 15,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,

                              ),
                            ),
                          ),
                          AppConstants.gap5,
                          CustomTextField(
                            hintText: 'Card Number',
                            hintColor: ColorResources.hintText,
                            isRegister: true,
                          ),
                          AppConstants.gap5,
                          Expanded(
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Flexible(
                                    child: new TextField(
                                        decoration: InputDecoration(
                                      contentPadding: EdgeInsets.all(10),
                                      hintText: 'MM/YY',
                                    )),
                                  ),
                                  SizedBox(
                                    width: 20.0,
                                  ),
                                  Flexible(
                                    child: new TextField(
                                        decoration: InputDecoration(
                                            contentPadding: EdgeInsets.all(10),
                                            hintText: "CVC")),
                                  ),
                                ]),
                          ),
                          AppConstants.gap20,
                          AppConstants.gap10,
////////////////////////////////////////////////////////////////////////////////Billing Address
                          Container(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Billing Address',
                              style: TextStyle(
                                color: Color(0xFF414141),
                                fontSize: 15,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          AppConstants.gap5,
                          InputDropdownList(),
                          CustomTextField(
                            hintText: 'ZIP Code',
                            hintColor: ColorResources.hintText,
                            isRegister: true,
                          ),
                          AppConstants.gap20,
                          AppConstants.gap20,
////////////////////////////////////////////////////////////////////////////////Promo Code
                          Container(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Promo Code',
                              style: TextStyle(
                                color: Color(0xFF414141),
                                fontSize: 15,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          // AppConstants.gap5,
                          Expanded(
                            child: Row(
                              children: [
                                Container(
                                  width: 171,
                                  height: 41,
                                  decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          width: 0.50, color: Color(0xFFAFAFAF)),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: InkWell(
                                    onTap: () {},
                                    child: Container(
                                      width: 85,
                                      height: 40,
                                      decoration: ShapeDecoration(
                                        color: Color(0xFFE6E6E6),
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(5)),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'APPLY',
                                          style: TextStyle(
                                            color: Color(0xFFA2A2A2),
                                            fontSize: 12,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w500,
                                            height: 0,
                                            letterSpacing: -0.24,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          AppConstants.gap20,
                          AppConstants.gap20,
                          CustomButton(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => DialogPaymentDone(
                                          pricePackage: '50',
                                          priceDaysPackage: ' Erop , 20',
                                          priceGigaPackage: '3',
                                          dataGigaPackage: '3 ',
                                          validityDaysPackage: '20',
                                            )));
                              },
                              text: 'PAY 30 \$',
                              color: ColorResources.grey2,
                              colorTxt: ColorResources.white,
                              isSelected: true),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
