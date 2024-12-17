import'package:flutter/material.dart';
import 'custom_text_widget.dart';

void _onPressed(){
  print('Button Pressed');
}
void _LongPressed()
{
  print('Button Long Pressde');
}
String buttonText='Press Me';
void main()
{
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        backgroundColor:  Color.fromARGB(255, 71, 42, 239),
        title:Text("First Program"),
        ),
        backgroundColor:  const Color.fromARGB(255, 232, 169, 169),
      body:const Center(
        child: Column(
          children: [
            customtext
            (text: 'First app', 
            containerColor:Colors.black26,
             textColor: Colors.amber,
             ),
              customtext
            (text: 'Second title', 
            containerColor:Colors.green,
             textColor: Color.fromARGB(255, 254, 211, 225),
             ),
             ButtonWidget()
          ],
        ),
        ),
  ),
  ),
  );
}

class ButtonWidget extends StatefulWidget {
  const ButtonWidget({
    super.key,
  });

  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  void _changeText()
  {
    setState(() {
       buttonText='Button presented';
    });
   
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: _changeText,
    onLongPress: _LongPressed,
     child: Text(buttonText));
  }
}

