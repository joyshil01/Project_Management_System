import 'package:flutter/material.dart';
import '../../../../common_widgets/string_hardcoded.dart';
import 'ExpandedListAnimationWidget.dart';

class department_Textfield extends StatefulWidget {
  const department_Textfield({
    super.key,
    required this.department,
  });

  final TextEditingController department;

  @override
  State<department_Textfield> createState() => _department_TextfieldState();
}

List<String> _list = [
  "Super Admin",
  "Human Resource",
  "Social Media Marketing",
  "Search Engine Optimization",
  "Manager",
  "Business Development Executive",
  "Frontend Developer",
  "Information Technology",
];

class _department_TextfieldState extends State<department_Textfield> {
  bool isStrechedDropDown = false;
  var groupValue;
  String title = 'Select Department'.hardcoded;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Text(
              'Department'.hardcoded,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Theme.of(context).hintColor,
                    fontSize: 16,
                  ),
            ),
          ),
          Container(
            child: Column(
              children: [
                TextFormField(
                  onTap: () {
                    setState(() {
                      isStrechedDropDown = !isStrechedDropDown;
                    });
                  },
                  controller: widget.department,
                  readOnly: true,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
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
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          isStrechedDropDown = !isStrechedDropDown;
                        });
                      },
                      child: Icon(
                        isStrechedDropDown
                            ? Icons.arrow_drop_up
                            : Icons.arrow_drop_down,
                        color: Colors.grey,
                        // size: 16,
                      ),
                    ),
                    hintText: title,
                    hintStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Theme.of(context).hintColor,
                        ),
                    icon: const Icon(
                      Icons.grid_view,
                      color: Colors.grey,
                    ),
                  ),
                ),
                ExpandedSection(
                  expand: isStrechedDropDown,
                  height: 100,
                  child: Scrollbar(
                    thickness: 5,
                    isAlwaysShown: true,
                    radius: Radius.circular(30),
                    child: ListView.builder(
                      padding: EdgeInsets.all(0),
                      shrinkWrap: true,
                      itemCount: _list.length,
                      itemBuilder: (context, index) {
                        return RadioListTile(
                          activeColor: Colors.blue,
                          title: Text(
                            _list.elementAt(index),
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  color: Theme.of(context).hintColor,
                                ),
                          ),
                          value: index,
                          groupValue: groupValue,
                          onChanged: (val) {
                            setState(
                              () {
                                groupValue = val!;
                                title = _list.elementAt(index);
                                isStrechedDropDown = false;
                              },
                            );
                          },
                        );
                      },
                    ),
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
