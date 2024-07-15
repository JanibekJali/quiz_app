import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<int> sandar = [9, 45, 32, 34, 32, 21, 11, 3];

  List<String> adamdynAttary = ['Manas', 'Semetey', 'Seytek'];

  List<Widget> icons = [];
  bool ochukJanyk = false;
  void checkIcon() {
    setState(() {});
    icons.add(ChoiceIcon(
      icon: Icons.check,
      color: Colors.red,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff363636),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ChoiceButtonWidget(
              onTap: () {
                checkIcon();
              },
              text: 'Defr',
              color: Colors.green,
            ),
            IconButton(
                onPressed: () {
                  setState(() {
                    ochukJanyk = !ochukJanyk;
                  });
                },
                icon: Icon(
                  Icons.favorite,
                  size: 70,
                  color: ochukJanyk == true ? Colors.red : Colors.grey,
                )),
            Center(
              child: Text(
                'Кыргызстанда 7 область  бар',
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
                    checkIcon();
                  },
                  text: 'Туура',
                  color: Colors.red,
                ),
                SizedBox(height: 20),
                ChoiceButtonWidget(
                  onTap: () {
                    checkIcon();
                  },
                  text: 'wdewfrgt',
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
