import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:badges/badges.dart';

class CardComponent extends StatelessWidget {
  const CardComponent({
    Key? key,
    required this.atack,
    required this.defence,
    required this.title,
    required this.description,
    required this.picture,
    required this.primaryColor,
  }) : super(key: key);

  final int atack;
  final int defence;
  final String title;
  final String description;
  final String picture;
  final Color primaryColor;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 1,
      shape: const RoundedRectangleBorder(
        side: BorderSide(
          color: Colors.grey,
        ),
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      child: InkWell(
        splashColor: Colors.blue.withAlpha(30),
        onTap: () {
          debugPrint('Card onTap.');
        },
        onDoubleTap: () {
          debugPrint('Card onDoubleTap.');
        },
        child: SizedBox(
          height: 180,
          child: Container(
            margin: const EdgeInsets.all(5.0),
            color: primaryColor,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      title,
                      style: GoogleFonts.wellfleet(
                        textStyle: Theme.of(context).textTheme.displayMedium,
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                        fontSize: 18.0,
                      ),
                    ),
                    Badge(
                      padding: const EdgeInsets.all(6),
                      shape: BadgeShape.circle,
                      position: BadgePosition.center(),
                      borderRadius: BorderRadius.circular(100),
                      elevation: 1,
                      borderSide: const BorderSide(
                        color: Colors.white,
                        width: 1,
                      ),
                      badgeColor: Colors.black,
                      badgeContent: Text(
                        '$defence/$atack',
                        style: GoogleFonts.lato(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Image.asset(
                        'assets/images/players/$picture.jpg',
                        fit: BoxFit.cover,
                        height: 100.0,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(
                              description,
                              style: GoogleFonts.lato(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 12.0,
                              ),
                              overflow: TextOverflow.visible,
                              maxLines: 2,
                              softWrap: true,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
