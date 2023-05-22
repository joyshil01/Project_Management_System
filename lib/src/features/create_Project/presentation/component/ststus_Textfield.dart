import 'package:flutter/material.dart';

import 'ExpandedListAnimationWidget.dart';

class status_Textfield extends StatefulWidget {
  const status_Textfield({
    super.key,
    required this.status,
  });

  final TextEditingController status;

  @override
  State<status_Textfield> createState() => _status_TextfieldState();
}

List<String> _list = [
  'Aa',
  "Bb",
  "Cc",
  'Dd',
  'Ee',
];

class _status_TextfieldState extends State<status_Textfield> {
  bool isStrechedDropDown = false;
  var groupValue;
  String title = 'Select Status';
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Text(
              'Status',
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
                  controller: widget.status,
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
                          color: Theme.of(context).highlightColor,
                        ),
                    icon: const Icon(
                      Icons.stream,
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
