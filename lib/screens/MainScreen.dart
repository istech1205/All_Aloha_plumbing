import 'package:all_aloha_plumbing/utils/Const.dart';
import 'package:all_aloha_plumbing/utils/colors.dart';
import 'package:all_aloha_plumbing/utils/styles.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: white,
        body: SafeArea(
          child: SingleChildScrollView(
              child: Container(
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                Image.asset(
                  'assets/logo.PNG',
                  height: 80,
                  width: MediaQuery.of(context).size.width,
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Custom Job Builder",
                  style: bigTextStyle,
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  child: Row(
                    children: [
                      LableText(lable: "Job Hours"),
                      SizedBox(
                        width: 10,
                      ),
                      TextInputField(
                        hint: 'Enter Job Hours',
                        inputType: TextInputType.number,
                        inputAction: TextInputAction.next,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      OutputText()
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  child: Row(
                    children: [
                      LableText(lable: "Parts Cost"),
                      SizedBox(
                        width: 10,
                      ),
                      TextInputField(
                        hint: 'Enter parts costs',
                        inputType: TextInputType.number,
                        inputAction: TextInputAction.next,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      OutputText()
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: [
                      LableText(lable: "Apprentice Hours"),
                      SizedBox(
                        width: 10,
                      ),
                      TextInputField(
                        hint: 'Enter Apprentice',
                        inputType: TextInputType.number,
                        inputAction: TextInputAction.next,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      OutputText()
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: [
                      LableText(lable: "Subcontractor Cost"),
                      SizedBox(
                        width: 10,
                      ),
                      TextInputField(
                        hint: 'Enter Subcontractor',
                        inputType: TextInputType.number,
                        inputAction: TextInputAction.next,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      OutputText()
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  child: Row(
                    children: [
                      SizedBox(
                        width: 100,
                      ),
                      LableText(lable: "Job Price"),
                      SizedBox(
                        width: 10,
                      ),
                      OutputText()
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: [
                      LableText(lable: "Sales manager cost"),
                      SizedBox(
                        width: 10,
                      ),
                      TextInputField(
                        hint: 'Enter Subcontractor',
                        inputType: TextInputType.number,
                        inputAction: TextInputAction.done,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  child: Row(
                    children: [
                      Container(
                        width: 150,
                        child: Text(
                          'Job price sold by Sales manager',
                          style: lablesStyle,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      OutputText()
                    ],
                  ),
                ),
              ],
            ),
          )),
        ));
  }
}

class LableText extends StatelessWidget {
  const LableText({
    Key key,
    this.lable,
  }) : super(key: key);

  final String lable;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width / 4,
      child: Text(
        lable,
        style: lablesStyle,
      ),
    );
  }
}

class OutputText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.only(right: 10, left: 10),
      height: 35,
      width: size.width / 3,
      decoration: loginsignupEtStyle,
      child: Text(
        "",
        style: lablesStyle,
      ),
    );
  }
}

class TextInputField extends StatelessWidget {
  const TextInputField({
    Key key,
    @required this.hint,
    this.inputType,
    this.inputAction,
  }) : super(key: key);

  final String hint;
  final TextInputType inputType;
  final TextInputAction inputAction;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.only(right: 10, left: 10),
      height: 35,
      width: size.width / 4,
      decoration: loginsignupEtStyle,
      child: Center(
        child: TextField(
          style: loginsignEtHintStyle,
          textAlign: TextAlign.left,
          textInputAction: inputAction,
          keyboardType: inputType,
          textAlignVertical: TextAlignVertical.center,
          decoration: InputDecoration(
              hintText: hint,
              border: InputBorder.none,
              hintStyle: loginsignEtHintStyle,
              fillColor: bggray),
        ),
      ),
    );
  }
}
