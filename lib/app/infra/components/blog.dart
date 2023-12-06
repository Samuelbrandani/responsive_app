import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/components.dart';

const Widget divider = Divider(color: Color(0xFFEEEEEE), thickness: 1);
Widget dividerSmall = Container(
  width: 40,
  decoration: const BoxDecoration(
    border: Border(
      bottom: BorderSide(
        color: Color(0xFFA0A0A0),
        width: 1,
      ),
    ),
  ),
);

class ListItem extends StatelessWidget {
  final String title;
  final String? description;

  const ListItem({
    Key? key,
    required this.title,
    this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Image.network(
          'https://cdn.pixabay.com/photo/2017/08/07/10/32/black-and-white-2602403_960_720.jpg',
        ),
        const SizedBox(height: 12),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            title,
            style: headlineTextStyle,
          ),
        ),
        if (description != null)
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              description!,
              style: bodyTextStyle,
            ),
          ),
      ],
    );
  }
}

class MinimalMenuBar extends StatelessWidget {
  const MinimalMenuBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
          margin: const EdgeInsets.symmetric(vertical: 30),
          child: Row(
            children: <Widget>[
              InkWell(
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
                child: Text(
                  "MINIMAL",
                  style: GoogleFonts.montserrat(
                    color: textPrimary,
                    fontSize: 30,
                    letterSpacing: 3,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Flexible(
                child: Container(
                  alignment: Alignment.centerRight,
                  child: Wrap(
                    children: <Widget>[
                      TextButton(
                        onPressed: () => Navigator.popUntil(context,
                            ModalRoute.withName(Navigator.defaultRouteName)),
                        style: menuButtonStyle,
                        child: const Text(
                          "HOME",
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        style: menuButtonStyle,
                        child: const Text(
                          "PORTFOLIO",
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        style: menuButtonStyle,
                        child: const Text(
                          "ABOUT",
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        style: menuButtonStyle,
                        child: const Text(
                          "CONTACT",
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 1,
          margin: const EdgeInsets.only(bottom: 30),
          color: const Color(0xFFEEEEEE),
        ),
      ],
    );
  }
}
