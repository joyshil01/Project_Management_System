import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import '../../../../constans.dart';
import '../../../common_widgets/buttonStyle.dart';
import '../../../utils/media-query.dart';
import 'component/client_Textfeild.dart';
import 'component/department_Textfeild.dart';
import 'component/project_Priority.dart';
import 'component/ststus_Textfield.dart';

// ignore: camel_case_types
class Createproject_Screen extends StatefulWidget {
  const Createproject_Screen({super.key});

  @override
  State<Createproject_Screen> createState() => _Createproject_ScreenState();
}

// ignore: camel_case_types
class _Createproject_ScreenState extends State<Createproject_Screen>
    with SingleTickerProviderStateMixin {
  TextEditingController projectName = TextEditingController();
  TextEditingController prijectWebsite = TextEditingController();
  TextEditingController projectType = TextEditingController();
  TextEditingController client = TextEditingController();
  TextEditingController department = TextEditingController();
  TextEditingController companyLogo = TextEditingController();
  TextEditingController status = TextEditingController();
  TextEditingController projectPriority = TextEditingController();
  bool isChecked = false;
  late AnimationController loadingController;
  File? pickedImage;
  File? _file;
  PlatformFile? _platformFile;
  pickImage(ImageSource imageType) async {
    try {
      final photo = await ImagePicker().pickImage(source: imageType);
      if (photo == null) return;
      final tempimage = File(photo.path);
      setState(() {
        pickedImage = tempimage;
      });
    } catch (error) {
      debugPrint(error.toString());
    }
  }

  selectFile() async {
    final file = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['png', 'jpg', 'jpeg', 'pdf'],
    );

    if (file != null) {
      setState(() {
        _file = File(file.files.single.path!);
        _platformFile = file.files.first;
      });
    }

    loadingController.forward();
  }

  @override
  Widget build(BuildContext context) {
    // companyLogo.text = _platformFile!.name;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Firstgradient,
              Secondgradient,
            ],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
        ),
        child: ListView(
          children: [
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(4),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: Container(
                          padding: EdgeInsets.only(
                            left: SizeVariables.getWidth(context) * 0.01,
                          ),
                          child: Row(
                            children: [
                              const Icon(
                                Icons.arrow_back_ios_new_outlined,
                                color: backiconColor,
                                size: 18,
                              ),
                              Text(
                                'Back',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                      color: Theme.of(context).hintColor,
                                      fontSize: 16,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          padding: EdgeInsets.only(
                            top: SizeVariables.getHeight(context) * 0.005,
                            right: SizeVariables.getWidth(context) * 0.02,
                          ),
                          child: Image.asset(
                            'assets/drawer/bell.png',
                            height: 30,
                            width: 30,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Create new Project',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Theme.of(context).hintColor,
                        fontSize: 23,
                      ),
                ),
              ],
            ),
            SizedBox(
              height: SizeVariables.getHeight(context) * 0.02,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: SizeVariables.getWidth(context) * 0.04,
                right: SizeVariables.getWidth(context) * 0.04,
              ),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Project Name',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  color: Theme.of(context).hintColor,
                                  fontSize: 16,
                                ),
                          ),
                          TextFormField(
                            controller: projectName,
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  color: Theme.of(context).hintColor,
                                ),
                            decoration: InputDecoration(
                              enabledBorder: const UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xfff7B7B7B),
                                ),
                              ),
                              focusedBorder: const UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xfff7B7B7B),
                                ),
                              ),
                              hintText: 'Enter Project Name',
                              hintStyle: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    color: Color(0xfff7B7B7B),
                                  ),
                              icon: const Icon(
                                Icons.engineering_outlined,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: SizeVariables.getHeight(context) * 0.015,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Project Website',
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    color: Theme.of(context).hintColor,
                                    fontSize: 16,
                                  ),
                        ),
                        TextFormField(
                          controller: prijectWebsite,
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    color: Theme.of(context).hintColor,
                                  ),
                          decoration: InputDecoration(
                            enabledBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xfff7B7B7B),
                              ),
                            ),
                            focusedBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xfff7B7B7B),
                              ),
                            ),
                            hintText: 'Enter Project Website Name',
                            hintStyle: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  color: Color(0xfff7B7B7B),
                                ),
                            icon: const Icon(
                              Icons.language_outlined,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: SizeVariables.getHeight(context) * 0.015,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            'Project Type',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  color: Theme.of(context).hintColor,
                                  fontSize: 16,
                                ),
                          ),
                        ),
                        TextFormField(
                          controller: projectType,
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    color: Theme.of(context).hintColor,
                                  ),
                          decoration: InputDecoration(
                            enabledBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xfff7B7B7B),
                              ),
                            ),
                            focusedBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xfff7B7B7B),
                              ),
                            ),
                            hintText: 'Enter Project type',
                            hintStyle: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  color: const Color(0xfff7B7B7B),
                                ),
                            icon: const Icon(
                              Icons.view_module,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: SizeVariables.getHeight(context) * 0.015,
                    ),
                    clients_Textfeild(client: client),
                    SizedBox(
                      height: SizeVariables.getHeight(context) * 0.015,
                    ),
                    department_Textfield(department: department),
                    SizedBox(
                      height: SizeVariables.getHeight(context) * 0.015,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Company Logo',
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    color: Theme.of(context).hintColor,
                                    fontSize: 16,
                                  ),
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.business_outlined,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: SizeVariables.getWidth(context) * 0.035,
                            ),
                            ElevatedButton(
                              onPressed: () {
                                selectFile();
                              },
                              style: ElevatedButton.styleFrom(
                                primary: const Color(0xfff000000).withAlpha(12),
                              ),
                              child: Text(
                                'Choose file',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                      color: const Color(0xfff7B7B7B),
                                    ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                left: SizeVariables.getWidth(context) * 0.02,
                              ),
                              width: SizeVariables.getWidth(context) * 0.5,
                              child: TextFormField(
                                controller: companyLogo,
                                readOnly: true,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                      color: Theme.of(context).hintColor,
                                    ),
                                decoration: InputDecoration(
                                  enabledBorder: const UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xfff7B7B7B),
                                    ),
                                  ),
                                  focusedBorder: const UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xfff7B7B7B),
                                    ),
                                  ),
                                  hintText: _platformFile != null
                                      ? _platformFile?.name
                                      : 'No file choosen',
                                  hintStyle: _platformFile != null
                                      ? Theme.of(context)
                                          .textTheme
                                          .bodyMedium!
                                          .copyWith(
                                            color: Theme.of(context).hintColor,
                                          )
                                      : Theme.of(context)
                                          .textTheme
                                          .bodyMedium!
                                          .copyWith(
                                            color: Color(0xfff7B7B7B),
                                          ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: SizeVariables.getHeight(context) * 0.015,
                    ),
                    status_Textfield(status: status),
                    SizedBox(
                      height: SizeVariables.getHeight(context) * 0.015,
                    ),
                    project_Priority(client: client),
                    SizedBox(
                      height: SizeVariables.getHeight(context) * 0.02,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Project Priority',
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    color: Theme.of(context).hintColor,
                                    fontSize: 16,
                                  ),
                        ),
                        SizedBox(
                          height: SizeVariables.getHeight(context) * 0.015,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            height: SizeVariables.getHeight(context) * 0.13,
                            color: const Color(0xfff000000).withAlpha(35),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 8,
                              ),
                              child: TextFormField(
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                      color: Theme.of(context).hintColor,
                                      fontSize: 14,
                                    ),
                                maxLines: 10,
                                // textInputAction: TextInputAction.next,
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: SizeVariables.getHeight(context) * 0.03,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SubmitButton(
                              onPressed: () {},
                              label: 'Submit',
                            ),
                          ],
                        ),
                        SizedBox(
                          height: SizeVariables.getHeight(context) * 0.02,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
