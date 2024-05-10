import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:state_management/dark_light_theme.dart';
class slider extends StatefulWidget {
  const slider({super.key});

  @override
  State<slider> createState() => _sliderState();
}

class _sliderState extends State<slider> {

  double value = 0.1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Slider"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Slider(
              min : 0,
              max : 1,
              value: value, onChanged: (val){
                print(val);
                value = val; // Update the value of _value
                setState(() {
            });
          }),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  height: 100,
                  width: 150,
                  color: Colors.red.withOpacity(value),
                  child: Text("Minimum Values"),
                ),
              ),
              Expanded(
                child: Container(
                  height: 100,
                  width: 150,
                  color: Colors.blue.withOpacity(value),
                  child: Text("Maximum Values"),
                ),
              ),
            ],
          ),
          SizedBox(height: 30,),
          ElevatedButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>dark_light_theme()));
            },
            child: Text("getx management systme"),
          )
        ],
      ),
    );
  }
}
