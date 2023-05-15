import 'dart:math';

import 'package:flutter/material.dart';
import '../../../../utils/media-query.dart';
import '../../data/edit.dart';
import '../../data/note.dart';
import 'colors.dart';

class NewList_Widget extends StatefulWidget {
  @override
  State<NewList_Widget> createState() => _NewList_WidgetState();
}

class _NewList_WidgetState extends State<NewList_Widget> {
  List<Note> filteredNotes = [];
  bool sorted = false;

  @override
  void initState() {
    super.initState();
    filteredNotes = sampleNotes;
  }

  List<Note> sortNotesByModifiedTime(List<Note> notes) {
    if (sorted) {
      notes.sort((a, b) => a.modifiedTime.compareTo(b.modifiedTime));
    } else {
      notes.sort((b, a) => a.modifiedTime.compareTo(b.modifiedTime));
    }

    sorted = !sorted;

    return notes;
  }

  getRandomColor() {
    Random random = Random();
    return backgroundColors[random.nextInt(backgroundColors.length)];
  }

  void onSearchTextChanged(String searchText) {
    setState(() {
      filteredNotes = sampleNotes
          .where((note) =>
              note.content.toLowerCase().contains(searchText.toLowerCase()) ||
              note.title.toLowerCase().contains(searchText.toLowerCase()))
          .toList();
    });
  }

  void deleteNote(int index) {
    setState(() {
      Note note = filteredNotes[index];
      sampleNotes.remove(note);
      filteredNotes.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeVariables.getHeight(context) * 0.8,
      child: ListView.builder(
        padding: const EdgeInsets.only(top: 30),
        itemCount: filteredNotes.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.only(bottom: 20),
            color: getRandomColor(),
            elevation: 3,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListTile(
                onTap: () async {
                  final result = await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) =>
                          EditScreen(note: filteredNotes[index]),
                    ),
                  );
                  if (result != null) {
                    setState(() {
                      int originalIndex =
                          sampleNotes.indexOf(filteredNotes[index]);

                      sampleNotes[originalIndex] = Note(
                          id: sampleNotes[originalIndex].id,
                          title: result[0],
                          content: result[1],
                          modifiedTime: DateTime.now());

                      filteredNotes[index] = Note(
                          id: filteredNotes[index].id,
                          title: result[0],
                          content: result[1],
                          modifiedTime: DateTime.now());
                    });
                  }
                },
                title: RichText(
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  text: TextSpan(
                      text: '${filteredNotes[index].title} \n',
                      style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          height: 1.5),
                      children: [
                        TextSpan(
                          text: filteredNotes[index].content,
                          style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.normal,
                              fontSize: 14,
                              height: 1.5),
                        )
                      ]),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    'Test',
                    // 'Edited: ${DateFormat('EEE MMM d, yyyy h:mm a').format(filteredNotes[index].modifiedTime)}*',
                    style: TextStyle(
                        fontSize: 10,
                        fontStyle: FontStyle.italic,
                        color: Colors.grey.shade800),
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {
                    setState(() async {
                      final result = await confirmDialog(context);
                      if (result != null && result) {
                        deleteNote(index);
                      }
                    });
                  },
                  icon: const Icon(
                    Icons.delete,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Future<dynamic> confirmDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            backgroundColor: Colors.grey.shade900,
            icon: const Icon(
              Icons.info,
              color: Colors.grey,
            ),
            title: const Text(
              'Are you sure you want to delete?',
              style: TextStyle(color: Colors.white),
            ),
            content: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context, true);
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green),
                      child: const SizedBox(
                        width: 60,
                        child: Text(
                          'Yes',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white),
                        ),
                      )),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context, false);
                      },
                      style:
                          ElevatedButton.styleFrom(backgroundColor: Colors.red),
                      child: const SizedBox(
                        width: 60,
                        child: Text(
                          'No',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white),
                        ),
                      )),
                ]),
          );
        });
  }
}
