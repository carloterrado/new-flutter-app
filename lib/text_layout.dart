import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Text Layout',
          style: GoogleFonts.leckerliOne(fontSize: 30),
        ),
        Text(
          'Text can wrap without issue',
          style: Theme.of(context).textTheme.headline6,
        ),
        const Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam at mauris massa. Suspendisse potenti.Aenean aliquet eu nisl vitae tempus.'),
        // Add divider
        const Divider(),
        RichText(
          text: const TextSpan(
            text: 'Flutter text is ',
            style: TextStyle(fontSize: 30, color: Colors.black),
            children: <TextSpan>[
              TextSpan(
                text: 'really ',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
                children: [
                  TextSpan(
                    text: 'Powerful.',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      decorationStyle: TextDecorationStyle.double,
                      fontSize: 28,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
