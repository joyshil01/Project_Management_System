import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:project_management_system/src/utils/media-query.dart';

class Projects_Text extends StatefulWidget {
  @override
  State<Projects_Text> createState() => _Projects_TextState();
}

class _Projects_TextState extends State<Projects_Text> {
  QuillController projectPriorityText = new QuillController.basic();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            color: Colors.white,
            child: QuillToolbar.basic(
              showSearchButton: false,
              showCodeBlock: false,
              showColorButton: false,
              showFontFamily: false,
              showFontSize: false,
              showJustifyAlignment: false,
              showClearFormat: false,
              showHeaderStyle: false,
              showIndent: false,
              showListCheck: false,
              showDirection: false,
              showInlineCode: false,
              showQuote: false,
              // showRedo: false,
              showBackgroundColorButton: false,
              showCenterAlignment: false,
              showLink: false,
              showStrikeThrough: false,
              controller: projectPriorityText,
              toolbarIconSize: 25,
              iconTheme: const QuillIconTheme(
                borderRadius: 14,
                iconSelectedColor: Colors.blue,
              ),
            ),
          ),
          Container(
            height: SizeVariables.getHeight(context) * 0.13,
            color: Color(0xfff000000).withAlpha(35),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: QuillEditor.basic(
                controller: projectPriorityText,
                readOnly: false,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AddProjects_Text extends StatefulWidget {
  @override
  State<AddProjects_Text> createState() => _AddProjects_TextState();
}

class _AddProjects_TextState extends State<AddProjects_Text> {
  QuillController projectPriorityText = new QuillController.basic();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            color: Colors.white,
            child: QuillToolbar.basic(
              showSearchButton: false,
              showCodeBlock: false,
              showColorButton: false,
              showFontFamily: false,
              showFontSize: false,
              showJustifyAlignment: false,
              showClearFormat: false,
              showHeaderStyle: false,
              showIndent: false,
              showListCheck: false,
              showDirection: false,
              showInlineCode: false,
              showQuote: false,
              // showRedo: false,
              showBackgroundColorButton: false,
              showCenterAlignment: false,
              showLink: false,
              showStrikeThrough: false,
              controller: projectPriorityText,
              toolbarIconSize: 25,
              iconTheme: const QuillIconTheme(
                borderRadius: 14,
                iconSelectedColor: Colors.blue,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 10,
              right: 10,
            ),
            child: Container(
              height: SizeVariables.getHeight(context) * 0.2,
              decoration: BoxDecoration(
                color: Color(0xfff000000).withAlpha(35),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12),
                ),
                border: Border.all(
                  color: Color.fromARGB(255, 76, 75, 75),
                )
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: QuillEditor.basic(
                  controller: projectPriorityText,
                  readOnly: false,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
