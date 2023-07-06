import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../common_widgets/string_hardcoded.dart';
import 'package:project_management_system/src/utils/media-query.dart';
import '../../../common_widgets/alertDialog.dart';
import '../../../common_widgets/buttonStyle.dart';

class CustomProjectDialog extends StatefulWidget {
  @override
  _CustomProjectDialogState createState() => _CustomProjectDialogState();
}

class _CustomProjectDialogState extends State<CustomProjectDialog> {
  final List<bool> _isChecked = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ];
  bool canUpload = false;
  final List<String> _texts = [
    "Frontend Developer",
    "Backend Developer",
    "UI/UX Developer",
    "Data Science",
    "Manager",
    "Marketing",
    "Product Analyst",
    "Head of IT",
  ];
  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return Colors.white;
    }
    return Colors.blue;
  }

  @override
  Widget build(BuildContext context) {
    return Department_Dailog(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: SizeVariables.getHeight(context) * 0.57,
        child: Column(
          children: [
            Expanded(
              child: ListView(
                shrinkWrap: true,
                padding: EdgeInsets.all(8.0),
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          onPressed: () {
                            Get.back();
                          },
                          icon: const Icon(
                            Icons.close,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: _texts.length,
                    itemBuilder: (_, index) {
                      return Row(
                        children: [
                          Checkbox(
                            checkColor: Colors.white,
                            fillColor:
                                MaterialStateProperty.resolveWith(getColor),
                            value: _isChecked[index],
                            onChanged: (val) {
                              setState(() {
                                _isChecked[index] = val!;
                                // Get.back();
                                canUpload = true;
                                for (var item in _isChecked) {
                                  if (item == false) {
                                    canUpload = false;
                                  }
                                }
                              });
                            },
                          ),
                          Container(
                            child: Text(
                              _texts[index],
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                    color: Theme.of(context).hintColor,
                                    fontSize: 16,
                                  ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: AppButtonStyle(
                          height: SizeVariables.getHeight(context) * 0.035,
                          width: SizeVariables.getWidth(context) * 0.18,
                          label: 'Ok'.hardcoded,
                          onPressed: () {
                            Get.back();
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
