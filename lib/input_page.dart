import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'data-card.dart';

const Color activeCardColor = Color(0x0ff1de33);
const bottomContainerHeight = 80;
const bottomContainerColor = Color(0xffeb1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();

}
class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        children: [
          Expanded(
              child: Row(
                children: const [
                  Expanded(
                    child: DataCard(
                      color: activeCardColor,
                      childCard: IconContent(
                        icon: FontAwesomeIcons.mars,
                        text: 'MALE',
                      ),
                    ),
                  ),
                  Expanded(
                    child: DataCard(
                      color: activeCardColor,
                      childCard: IconContent(
                          icon: FontAwesomeIcons.venus,
                          text: 'FEMALE'
                      ),
                    ),
                  ),
                ],
              )
          ),
          const Expanded(
              child: DataCard(color: activeCardColor),
          ),
          Expanded(
            child: Row(
              children: const  [
                Expanded(
                    child: DataCard(color: activeCardColor),
                ),
                Expanded(
                  child: DataCard(color: activeCardColor),
                ),

              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: const EdgeInsets.only(top: 10),
            width: double.infinity,
            height: 80,
          )
        ],
      ),
    );
  }
}

class IconContent extends StatelessWidget {
  final IconData icon;
  final String text;

  const IconContent({required this.icon, required this.text});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Icon(
        //   FontAwesomeIcons.mars,
        //   size: 80,
        // ),
        Icon(
          icon,
          size: 80,
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          text,
          style: const TextStyle(
            fontSize: 18,
            color: Color(0xff8d8e98)
          ),
        )
      ],
    );
  }
}







