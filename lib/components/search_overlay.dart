import 'package:flutter/material.dart';

class SearchOverlayWidget extends StatelessWidget {
  final TextEditingController _textFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
          //borderRadius: BorderRadius.circular(6.0),
          ),
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Container(
          height: 400.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // Text("Search",
              //     style: TextStyle(
              //         fontSize: 25.0,
              //         fontFamily: 'PTSerif',
              //         fontWeight: FontWeight.bold)),
              //SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                      // width: 0.0 produces a thin "hairline" border
                      borderSide:
                          const BorderSide(color: Colors.orange, width: 1.0),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6.0),
                    ),
                    hintText: 'Enter a search term'),
                controller: _textFieldController,
              )
            ],
          ),
        ),
      ),
    );
  }
}
