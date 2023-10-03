import 'package:csc_picker/csc_picker.dart';
import 'package:flutter/material.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

// class InputDropdownList extends StatelessWidget {
//
//   @override
//   Widget build(BuildContext context) =>
//       new Scaffold(
//         body: CountryCodePicker(
//           onChanged: print,
//           initialSelection: 'IT',
//          // favorite: ['+39', 'FR'],
//           showCountryOnly: false,
//           showOnlyCountryWhenClosed: false,
//           alignLeft: false,
//         ),
//       );
// }

class InputDropdownList extends StatefulWidget {
  InputDropdownList({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _InputDropdownListState createState() => _InputDropdownListState();
}

class _InputDropdownListState extends State<InputDropdownList> {
  String countryValue = "";
  String stateValue = "";
  String cityValue = "";
  String address = "";


  @override
  Widget build(BuildContext context) {
    //GlobalKey<CSCPickerState> _cscPickerKey = GlobalKey();

    return Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CSCPicker(
                showStates: false,
                showCities: false,
                flagState: CountryFlag.ENABLE,

                dropdownDecoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.white,
                    border:
                        Border.all(color: Colors.grey.shade300, width: 1)),
                disabledDropdownDecoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.grey.shade300,
                    border:
                        Border.all(color: Colors.grey.shade300, width: 1)),
                countryDropdownLabel: "'Write Your Billing Address'",
                countryFilter: [
                  CscCountry.India,
                  CscCountry.United_States,
                  CscCountry.Canada,
                  CscCountry.Egypt,
                  CscCountry.Saudi_Arabia,
                ],
                selectedItemStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
                dropdownHeadingStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.bold),
                dropdownItemStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
                dropdownDialogRadius: 10.0,
                searchBarRadius: 10.0,
                onCountryChanged: (value) {
                  setState(() {
                    countryValue = value;
                  });
                },
              ),
            ],
          ),
        ));
  }

}
