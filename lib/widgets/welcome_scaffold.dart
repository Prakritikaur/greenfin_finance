import 'package:flutter/material.dart';

// ignore: camel_case_types
class welcome_scaffold extends StatelessWidget {
  const welcome_scaffold({super.key, this.text, this.ontap, this.color, this.textcolor});

   final String? text;
   final Widget? ontap;
   final Color? color;
   final Color? textcolor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (e)=>ontap!,),);
      },

      child: Container(
        padding: const EdgeInsets.all(30),
        decoration: BoxDecoration(
          color: color!,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(50),
          )
        ),
        child: Text(text!,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: textcolor!,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        ),
      ),
    );
  }
}
