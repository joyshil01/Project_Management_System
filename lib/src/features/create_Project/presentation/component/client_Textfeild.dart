// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import '../../../../common_widgets/string_hardcoded.dart';
import 'ExpandedListAnimationWidget.dart';

class clients_Textfeild extends StatefulWidget {
  const clients_Textfeild({
    super.key,
    required this.client,
  });

  final TextEditingController client;

  @override
  State<clients_Textfeild> createState() => _clients_TextfeildState();
}

List<String> _list = ['A', "B", "C", 'D', 'E'];

class _clients_TextfeildState extends State<clients_Textfeild> {
  bool isStrechedDropDown = false;
  var groupValue;
  String title = 'Select Client'.hardcoded;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Text(
              'Clients'.hardcoded,
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
                  controller: widget.client,
                  readOnly: true,
                  onTap: () {
                    setState(() {
                      isStrechedDropDown = !isStrechedDropDown;
                    });
                  },
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
                      Icons.person,
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
                      // controller: scrollController2,
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
