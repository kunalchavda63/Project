import 'package:flutter/material.dart';
import 'main.dart';

class weight extends StatelessWidget {
  const weight({super.key});
final Weight = 60;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Weight",style: txt,),
        Text(Weight.toString(),style:TextStyle(color: Colors.white,fontSize: 50),),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            roundButton(icon: Icons.add,OnPressed: (){},),
            SizedBox(width: 20),
            roundButton(icon: Icons.minimize,OnPressed: (){}),

          ],
        ),



      ],
    );
  }
}

class age extends StatelessWidget {
  age({super.key});
final Age = 20;
  void weadd(){
    print("Hello");
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("AGE",style: txt,),
        Text(Age.toString(),style:TextStyle(color: Colors.white,fontSize: 50),),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            roundButton(icon: Icons.add,OnPressed:()
            {}


              ),
            SizedBox(width: 20),
            roundButton(icon: Icons.minimize,OnPressed:weadd

            ),

          ],
        ),

      ],
    );
  }
}

class roundButton extends StatelessWidget {
  final IconData icon;
  final Function() OnPressed;
  roundButton({Key?key,required this.icon, required this.OnPressed}):super(key: key);

  @override


  Widget build(BuildContext context) {
    return FloatingActionButton(onPressed: OnPressed,
      child: Icon(icon, color: Colors.white,),
    backgroundColor: Color(0XFF21244D),
    shape: CircleBorder(
    )

    );
  }
}