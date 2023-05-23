import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import '../../../../utils/media-query.dart';

class uploadImage extends StatelessWidget {
  const uploadImage({
    super.key,
    required File? file,
    required PlatformFile? platformFile,
  })  : _file = file,
        _platformFile = platformFile;

  final File? _file;
  final PlatformFile? _platformFile;
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 200,
      child: Row(
        children: [
          Image.file(
            _file!,
            width: SizeVariables.getWidth(context) * 0.25,
            height: SizeVariables.getHeight(context) * 0.08,
          ),
          Container(
            // height: 200,
            padding: EdgeInsets.only(
              left: SizeVariables.getWidth(context) * 0.02,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: SizeVariables.getWidth(context) * 0.6,
                  child: Text(
                    _platformFile!.name,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Theme.of(context).hintColor,
                        ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(
                  height: SizeVariables.getHeight(context) * 0.005,
                ),
                Text(
                  '${(_platformFile!.size / 1024).ceil()} KB',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Colors.grey.shade500,
                      ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
