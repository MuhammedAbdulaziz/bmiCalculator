import 'package:flutter/material.dart';


Widget defaultButton ({
  double width = double.infinity,
  Color background = Colors.blue,
  bool uppercase = true,
  double radius = 3,
  required Function function ,
  required String text,
}) =>  Container(
  width: width,
  height: 40.0,
  child: MaterialButton(
    onPressed:() => function,
    child: Text(
      uppercase? text.toUpperCase() : text.toLowerCase(),
      style: const TextStyle(
        color: Colors.white,
      ),
    ),
  ),
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(radius),
    color: background,
  ),
);

Widget defaultFormField(
{
  required TextEditingController controller,
  required TextInputType type,
  required Function validate,
  required String label,
  bool isPass = false,
  Function? onSubmit,
  Function? onChange,
  Function? suffixPressed,
  IconData? prefix,
  IconData? suffix,
}
    ) => TextFormField(
  controller: controller,
  keyboardType: type,
  obscureText: isPass,
  onFieldSubmitted:(String value)=>onSubmit,
  onChanged: (String value)=>onChange,
  decoration:  InputDecoration(
    labelText: label,
    prefixIcon: Icon(prefix),
    suffixIcon:suffix!=null?
    IconButton(
      onPressed:()=>suffixPressed,
      icon:Icon(suffix),
    ):null,
    border: const OutlineInputBorder(),

  ),
);