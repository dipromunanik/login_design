import 'package:flutter/material.dart';
class CustomText extends StatefulWidget {
 String label_text;
 String hint_text;
 IconData icon;
 bool obscure;
 Icon? pass;

 CustomText(this.label_text, this.hint_text,this.icon,this.obscure,{ this.pass});

  @override
  _CustomTextState createState() => _CustomTextState();
}

class _CustomTextState extends State<CustomText> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20,left: 20,top: 20),
      child:
      TextField(
        obscureText: widget.obscure,
        onTap: (){},
        decoration: InputDecoration(
          suffixIcon: widget.pass,
          suffixIconColor: const Color(0xffA0D50B),
          labelText: widget.label_text,
            hintText: widget.hint_text,
            hintStyle: const TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold),
            labelStyle: const TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.w400
            ),
            prefixIcon: Icon(widget.icon,color: Colors.black,size: 22),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                  color: Colors.black,
                  width: 1.5
              ),
            ),
            floatingLabelStyle: const TextStyle(
                color: Colors.black,
                fontSize: 22
            ),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black,width: 2),
                borderRadius: BorderRadius.circular(10)
            )
        ),
      ),
    );
  }
}
