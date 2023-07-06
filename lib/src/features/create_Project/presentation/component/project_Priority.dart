import 'package:flutter/material.dart';
import '../../../../common_widgets/string_hardcoded.dart';
import 'ExpandedListAnimationWidget.dart';

class project_Priority extends StatefulWidget {
  const project_Priority({
    super.key,
    required this.client,
  });

  final TextEditingController client;

  @override
  State<project_Priority> createState() => _project_PriorityState();
}

List<String> _list = [
  'High',
  'Medium',
  'Low',
];

class _project_PriorityState extends State<project_Priority> {
  bool isStrechedDropDown = false;
  var groupValue;
  String title = 'Select Priority'.hardcoded;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Text(
              'Project Priority'.hardcoded,
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
                  controller: widget.client,
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
                      Icons.priority_high_rounded,
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
                    child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
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
