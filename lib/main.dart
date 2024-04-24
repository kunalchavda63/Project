import 'package:flutter/material.dart';
import 'iconcontnt.dart';
import 'reusecard.dart';
import 'weight_age.dart';

final TextStyle txt =
    TextStyle(fontSize: 22, fontWeight: FontWeight.w800, color: Color(0XFF797984));
final background = 0XFF090E21;
final activecardcolor = 0XFF111328;
final inactivecolor = 0XFF1D1E33;
enum Gender  {
  male,
  female
}
void main() {
  runApp(app());
}

class app extends StatelessWidget {
  const app({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homepage(),
    );
  }
}

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  int height = 180;
  var malecardcolor = activecardcolor;
  var femalecardcolor = activecardcolor;
  void updatecolor(int Gender){
    if(Gender == 1){
      if(malecardcolor == activecardcolor){
        malecardcolor = inactivecolor;
      }
      else{
        malecardcolor = activecardcolor;
      }
    }
    if(Gender == 2){
      if(femalecardcolor == activecardcolor){
        femalecardcolor = inactivecolor;
      }
      else{
          femalecardcolor = activecardcolor;
        }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(background),
      appBar: AppBar(
        backgroundColor: Color(background),
        title: Text(
          "BMI Calculator",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w600, color: Colors.white),
          textAlign: TextAlign.center,
        ),
        elevation: 1,
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    setState(() {
                      updatecolor(1);
                    });
                  },
                  child: Reusecard(
                    color: malecardcolor,
                    height: 180,
                    Card: iconContent(icon: Icons.male, label: "MALE"),
                  ),
                )),
                Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                         updatecolor(2);
                        });
                      },
                      child: Reusecard(
                        color: femalecardcolor,
                        height: 180,
                        Card: iconContent(icon: Icons.female, label: "FEMALE"),
                                      ),
                    )),
              ],
            ),
            Reusecard(
                height: 210,
                color: inactivecolor,
                Card: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      "HEIGHT",
                      style: txt,
                      textAlign: TextAlign.center,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          height.toString(),
                          style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.w300,
                              color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          " cm",
                          style: txt,
                        ),

                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        thumbColor: Colors.pinkAccent,
                        overlayColor: Colors.pinkAccent,

                        thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                        overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
                      ),
                      child: Slider(value: height.toDouble(),
                        min: 120.0,
                        max: 220.0,
                        activeColor: Colors.pink,
                        inactiveColor: Colors.white70,
                        onChanged: (double newValue){
                          setState(() {
                            height = newValue.round();
                          });
                        },
                      ),
                    ),
                  ],
                )),
            Row(
              children: [
                Expanded(child: Reusecard(height: 200, Card:weight(), color: inactivecolor)),
                Expanded(child: Reusecard(height: 200, Card:age(), color: inactivecolor)),
              ],
            )
          ],
        ),
      ),
    );
  }
}


