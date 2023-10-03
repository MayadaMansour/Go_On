import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_on/presentation/screens/profile/faqs/main_faqs_screen/faqs_cubit/cubit_faqs.dart';
import 'package:go_on/presentation/screens/profile/faqs/main_faqs_screen/faqs_cubit/faqs_state.dart';

import '../../../../../../utils/constants/app_constants.dart';

import '../widget/faqs_container.dart';
import '../widget/item_list.dart';

class FAQsScreen extends StatelessWidget {
  const FAQsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FAQSCubit, FAQsState>(
        listener: (context, state)
    {
    },
    builder: (context, state) {
      return Scaffold(
        body: SafeArea(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  FAQSAppBar(text: 'FAQS'),
                  AppConstants.gap20,
                  FAQSList(),
                ],
              ),
            ),
          ),
        ),
      );
    },
    );
  }
}


