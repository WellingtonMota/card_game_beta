import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:badges/badges.dart';

class CardComponent extends StatelessWidget {
  const CardComponent({
    Key? key,
    required this.atack,
    required this.playerName,
    required this.picture,
  }) : super(key: key);

  final String atack;
  final String playerName;
  final String picture;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 1,
      shape: const RoundedRectangleBorder(
        side: BorderSide(
          color: Colors.black87,
        ),
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      child: InkWell(
        onTap: () {
          debugPrint('Card onTap.');
        },
        onDoubleTap: () {
          debugPrint('Card onDoubleTap.');
        },
        child: SizedBox(
          height: 160,
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/players/0.jpg'),
                fit: BoxFit.fill,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Badge(
                        padding: const EdgeInsets.all(10),
                        shape: BadgeShape.circle,
                        position: BadgePosition.center(),
                        borderRadius: BorderRadius.circular(100),
                        elevation: 1,
                        borderSide: const BorderSide(
                          color: Colors.grey,
                          width: 3,
                        ),
                        badgeColor: Colors.black,
                        badgeContent: Text(
                          atack,
                          style: GoogleFonts.lato(
                            textStyle:
                                Theme.of(context).textTheme.displayMedium,
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontSize: 28.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 60.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        playerName,
                        style: GoogleFonts.lato(
                          textStyle: Theme.of(context).textTheme.displayMedium,
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          fontSize: 18.0,
                          backgroundColor: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
