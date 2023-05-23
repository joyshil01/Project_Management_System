import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:project_management_system/constans.dart';
import '../../../../utils/media-query.dart';
import 'uploadImage.dart';

class Files_Widget extends StatefulWidget {
  @override
  State<Files_Widget> createState() => _Files_WidgetState();
}

class _Files_WidgetState extends State<Files_Widget> {
  File? _file;
  PlatformFile? _platformFile;
  File? image;
  bool isLoading = true;
  bool? isGallery;

  late AnimationController loadingController;

  selectFile() async {
    final file = await FilePicker.platform.pickFiles(
      type: FileType.any,
      // allowedExtensions: ['png', 'jpg', 'jpeg', 'pdf'],
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
    return Container(
      height: SizeVariables.getHeight(context) * 0.8,
      padding: EdgeInsets.only(
        // left: SizeVariables.getWidth(context) * 0.03,
        right: SizeVariables.getWidth(context) * 0.03,
      ),
      child: ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    'File ',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Theme.of(context).hintColor,
                          fontSize: 20,
                        ),
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                  Text(
                    'Upload',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Color(0xfff48ADDC),
                          fontSize: 20,
                        ),
                  ),
                ],
              ),
              IconButton(
                onPressed: () {
                  bottomsheetUpload(context);
                },
                icon: const Icon(
                  Icons.backup,
                  color: backiconColor,
                  size: 35,
                ),
              ),
            ],
          ),
          SizedBox(
            height: SizeVariables.getHeight(context) * 0.02,
          ),
          _platformFile != null
              ? uploadImage(file: _file, platformFile: _platformFile)
              : Container(),
        ],
      ),
    );
  }

  Future bottomsheetUpload(BuildContext context) {
    File? pickedImage;
    pickImage(ImageSource imageType) async {
      try {
        final photo = await ImagePicker().pickImage(source: imageType);
        if (photo == null) return;
        final tempimage = File(photo.path);
        setState(() {
          pickedImage = tempimage;
        });
        Get.back();
      } catch (error) {
        debugPrint(error.toString());
      }
    }

    return showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(30),
        ),
      ),
      isScrollControlled: true,
      builder: (context) => Container(
        height: SizeVariables.getHeight(context) * 0.15,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerRight,
            end: Alignment.bottomRight,
            colors: [
              Color(0xfff4BB6DF),
              Color(0xfff3A87D1),
            ],
          ),
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(30),
          ),
        ),
        child: Container(
          padding: EdgeInsets.only(
            left: SizeVariables.getWidth(context) * 0.03,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                leading: const Icon(
                  Icons.camera_alt,
                  color: backiconColor,
                ),
                title: Text(
                  'Camera',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Theme.of(context).hintColor,
                        fontSize: 18,
                      ),
                ),
                onTap: () {
                  pickImage(ImageSource.camera);
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.file_copy,
                  color: backiconColor,
                ),
                title: Text(
                  'Choose File',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Theme.of(context).hintColor,
                        fontSize: 18,
                      ),
                ),
                onTap: () {
                  selectFile();
                  Get.back();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
