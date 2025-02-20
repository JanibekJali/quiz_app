import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> icons = [];
  bool buutubu = false;
  int index = 0;
  List<SurooJoop> surooJoop = [
    SurooJoop(
      suroo: 'Кыргызстанда 7 область  бар',
      joop: true,
    ),
    SurooJoop(
      suroo: 'Кыргызстанда 60 район  бар',
      joop: false,
    ),
    SurooJoop(
      suroo: 'Озбекстан Кыргызстан менен чектешпейт',
      joop: false,
    ),
  ];

  String getQuestion() {
    if (index < surooJoop.length - 1) {
      return surooJoop[index].suroo;
    } else {
      return '';
    }
  }

  bool getAnswer() {
    if (index < surooJoop.length) {
      return surooJoop[index].joop;
    }
    return false;
  }

  void surooJooptuTeksher(bool koldonuuchununJoobu) {
    final programistinjoobu = getAnswer();
    if (koldonuuchununJoobu == programistinjoobu) {
      icons.add(const Icon(
        Icons.check,
        color: Colors.green,
        size: 60,
      ));
    } else if (koldonuuchununJoobu != programistinjoobu) {
      icons.add(const Icon(
        Icons.close,
        color: Colors.red,
        size: 60,
      ));
    }
    if (getQuestion() == '') {
      buutubu = true;
    }
    index++;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff363636),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(
              child: buutubu == true
                  ?
                  // Container(
                  //     height: 20,
                  //     width: 200,
                  //     color: Colors.red,
                  //     child: const Text('Buttu!'),
                  //   )

                  AlertDialog(
                      title: Text('Suroo buttu'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            buutubu = false;
                            index = 0;
                            getQuestion();
                            icons = [];
                            setState(() {});
                          },
                          child: Text('Kaira bashta!'),
                        ),
                      ],
                    )
                  : Text(
                      surooJoop[index].suroo,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.roboto(
                        fontSize: 32,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
            ),
            Column(
              children: [
                ChoiceButtonWidget(
                  onTap: () {
                    surooJooptuTeksher(true);
                  },
                  text: 'Туура',
                  color: Colors.red,
                ),
                SizedBox(height: 20),
                ChoiceButtonWidget(
                  onTap: () {
                    surooJooptuTeksher(false);
                  },
                  text: 'Туура эмес',
                  color: Colors.teal,
                ),
              ],
            ),
            Row(
              children: icons,
            ),
          ],
        ),
      ),
    );
  }
}

class ChoiceIcon extends StatelessWidget {
  const ChoiceIcon({
    super.key,
    required this.icon,
    required this.color,
  });
  final IconData icon;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      size: 70,
      color: color,
    );
  }
}

class ChoiceButtonWidget extends StatelessWidget {
  const ChoiceButtonWidget({
    super.key,
    required this.text,
    required this.color,
    required this.onTap,
  });
  final String text;
  final Color color;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Material(
        child: InkWell(
          splashColor: color,
          onTap: onTap,
          child: Container(
            width: 335.0,
            height: 70.0,
            child: Center(
                child: Text(
              text,
              style: TextStyle(
                fontSize: 32,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            )),
          ),
        ),
        color: Colors.transparent,
      ),
      color: Colors.orange,
    );
  }
}

class Toyota {
  final String camry; // 2
  final String corolla; // 10
  final String ist; // 5

  Toyota({
    required this.camry,
    required this.corolla,
    required this.ist,
  });
}

class Camry {
  final int orun;
  final String jurumu;

  Camry({required this.orun, required this.jurumu});
}

class SurooJoop {
  final String suroo;
  final bool joop;

  SurooJoop({
    required this.suroo,
    required this.joop,
  });
}
