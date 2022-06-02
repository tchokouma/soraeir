import 'package:flutter/material.dart';
import 'package:soraeir/app/themes/app_theme.dart';

import '../../themes/ThemeHelper.dart';
import '../../themes/light_color.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 25,
            ),
            Container(
              height: 45,
              child: Text(
                "SORAEIR ",
                style: AppTheme.themeBlackText.textTheme.headline1,
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              child: Image.asset(
                "assets/images/illustration/rabat01.jpg",
                width: double.infinity,
                fit: BoxFit.cover,
                height: 140.0,
              ),
            ),
            Transform.translate(
              offset: Offset(0.0, -24),
              child: Center(
                child: Container(
                  // decoration: ThemeHelper().buttonBoxDecoration(context),
                  child: ElevatedButton(
                    style: ThemeHelper().buttonStyle(),
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(40, 12, 40, 12),
                      child: Text(
                        "ACTUELLEMENT: OUVERTE",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.location_on_rounded,
                        size: 32,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "Adresse",
                        style: AppTheme.themeBlackText.textTheme.headline3,
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(25, 0, 0, 0),
                    child: Row(
                      children: [
                        Text(
                          "14 rue Saoudia \n Tabriquet, Sale",
                          style: TextStyle(),
                        ),
                        SizedBox(
                          width: 72,
                        ),
                        Container(
                          child: ElevatedButton(
                            style: ThemeHelper().buttonStyle1(),
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(22, 8, 22, 8),
                              child: Text(
                                "Itinéraire",
                                style:
                                    AppTheme.themeWithText.textTheme.headline4,
                              ),
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.watch_later,
                        size: 32,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        "Horaires d'ouverture",
                        style: AppTheme.themeBlackText.textTheme.headline3,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
                    child: const Text(
                      "Lundi: de 08:00 à 19:00\nMardi: de 08:00 à 19:00\nMercredi: de 08:00 à 19:00\nJeudi: de 08:00 à 19:00\nVendredi: de 08:00 à 19:00\nSamedi: de 10:00 à 18:00\nDimanche: Fermée",
                      style: TextStyle(
                        fontSize: 18,
                        wordSpacing: 1.5,
                        letterSpacing: 0.5,
                        fontFamily: "nunito",
                        height: 1.2,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.phone,
                        size: 32,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "Téléphone",
                        style: AppTheme.themeBlackText.textTheme.headline3,
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(25, 0, 0, 0),
                    child: Row(
                      children: [
                        Text(
                          "Tél : 06 90 69 66 78",
                          style: TextStyle(),
                        ),
                        SizedBox(
                          width: 52,
                        ),
                        Container(
                          child: ElevatedButton(
                            style: ThemeHelper().buttonStyle1(),
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(22, 8, 22, 8),
                              child: Text(
                                "Appeler",
                                style:
                                    AppTheme.themeWithText.textTheme.headline4,
                              ),
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
