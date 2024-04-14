import 'package:fci/presentation/main/widgets/custom_text_button.dart';
import 'package:fci/presentation/resources/assets_manager.dart';
import 'package:fci/presentation/resources/color_manager.dart';
import 'package:fci/presentation/resources/strings_manager.dart';
import 'package:fci/presentation/resources/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [ColorManager.firstGradient, ColorManager.secondGradient],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Column(
        children: [
          SizedBox(
              height: MediaQuery.of(context).size.height / 4,
              child: SvgPicture.asset(
                ImageAssets.onboardingLogo2,
              )),
          const SizedBox(
            height: AppSize.s14,
          ),
          const Text(
            AppStrings.fciText,
            textAlign: TextAlign.center,
            overflow: TextOverflow.clip,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: AppSize.s14,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 2 / 4,
            child: Column(
              children: [
                SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomTextButton(
                          width: MediaQuery.of(context).size.width / 2.5,
                          height: 140,
                          text: 'F I R S T\n YEAR',
                        ),
                        CustomTextButton(
                          width: MediaQuery.of(context).size.width / 2.5,
                          height: 140,
                          text: ' S E C O N D\n YEAR',
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomTextButton(
                          width: MediaQuery.of(context).size.width / 2.5,
                          height: 140,
                          text: 'T H I R D\n YEAR',
                        ),
                        CustomTextButton(
                          width: MediaQuery.of(context).size.width / 2.5,
                          height: 140,
                          text: 'F O U R T H\n YEAR',
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
