
import 'package:analyzer/file_system/file_system.dart';
import 'package:fci/app/extensions.dart';
import 'package:fci/presentation/material/view/widgets/custom_card.dart';
import 'package:fci/presentation/resources/color_manager.dart';
import 'package:fci/presentation/resources/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:fci/presentation/main/widgets/custom_text_button.dart';

class MaterialView extends StatefulWidget {
  const MaterialView({Key? key}) : super(key: key);

  @override
  State<MaterialView> createState() => _MaterialViewState();
}

class _MaterialViewState extends State<MaterialView> {
  // Future<void> saveFilePermanently(PlatformFile file) async {
  //   // final appStorage = await getApplicationDocumentsDirectory();
  //   // final newFile = File('${appStorage.path}/${file.name}');
  //   // await File(file.path!).copy(newFile.path);
  // }
  //
  // void openFile(String filePath) {
  //   OpenFile.open(filePath);
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          // final result = await FilePicker.platform.pickFiles();
          // if (result == null) return;
          // // open single file
          // final file = result.files.first;
          // openFile(file!.path!);
          //
          // await saveFilePermanently(file);
        },
        child: const Icon(Icons.add),
      ),
      body: Container(
        decoration:ColorManager.backGroundColor(),
        child: Column(
          children: [
             SizedBox(
               height: AppSize.s50,
              child: Center(
                child: Text(
                  'الحكومة الالكترونيه',
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.clip,
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(color: ColorManager.darkPrimary),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppSize.s4),
              child: SizedBox(
                height: AppSize.s50,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    CustomTextButton(
                      text: 'Lectures',
                      width: 130,
                      height: 40,
                    ),
                    const SizedBox(width: 9),
                    CustomTextButton(
                      text: 'Sections',
                      width: 130,
                      height: 40,
                    ),
                    const SizedBox(width: 9),
                    CustomTextButton(
                      text: 'Tasks',
                      width: 130,
                      height: 40,
                    ),
                    const SizedBox(width: 9),
                    CustomTextButton(
                      text: 'Exam',
                      width: 130,
                      height: 40,
                    ),
                    const SizedBox(width: 9),
                    CustomTextButton(
                      text: 'Summaries',
                      width: 130,
                      height: 40,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: AppSize.s16,
            ),
            // const Divider(
            //   color: Colors.black,
            //   thickness: 1,
            // ),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
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
            ),
          ],
        ),
      ),
    );
  }
}