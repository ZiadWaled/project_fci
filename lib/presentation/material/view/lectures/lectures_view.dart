import 'package:fci/presentation/material/view/widgets/custom_card.dart';
import 'package:fci/presentation/resources/color_manager.dart';
import 'package:fci/presentation/resources/values_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LecturesView extends StatelessWidget {
  const LecturesView({super.key});

  @override
  Widget build(BuildContext context) {
      return  Stack(
      children: [
        Align(
          alignment: Alignment.bottomRight,

          child: Padding(
            padding: const EdgeInsets.only(bottom: AppSize.s20,right: AppSize.s20),
            child: SizedBox(
              height: AppSize.s40,
              width: AppSize.s40,
              child: FloatingActionButton(
                backgroundColor: ColorManager.darkPrimary,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(AppSize.s30)),
                onPressed: () async {
                  print('ziad');
                },
                child: const Icon(Icons.add),
              ),
            ),
          ),
        ),
        ListView.builder(
          itemCount: 12,
          itemBuilder: (BuildContext context, int index) {
            return Row(
              children: [
                Expanded(
                  child: textButton(
                    text: 'الحوكمه الالكترونيه\nاحمد محمد محمد سليم',
                  ),
                ),
                const Column(
                  children: [
                    ButtonIconsDownload(),
                    ButtonIconsDelete(),
                  ],
                ),
              ],
            );
          },
        ),
      ],
          );
  }
}
