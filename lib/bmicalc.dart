import 'package:flutter/material.dart';

class BmiCalculator extends StatefulWidget {
  const BmiCalculator({Key? key}) : super(key: key);

  @override
  State<BmiCalculator> createState() => _BmiCalculatorState();
}

class _BmiCalculatorState extends State<BmiCalculator> {
  TextEditingController height=TextEditingController();
  TextEditingController weight=TextEditingController();
  double h_value=0;
  double w_value=0;
  double result=0;
  void calculate(){
    h_value=double.parse(height.text)/100;
    w_value=double.parse(weight.text);
    result=w_value/(h_value*h_value);
    print(result);

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
          backgroundColor: Colors.purple,
          title: Text(
            'Bmi Calculator',
            style: TextStyle(color: Colors.black),
          )),
      backgroundColor: Colors.pink,
      body: Column(mainAxisAlignment: MainAxisAlignment.center,children: [
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: TextField(controller: height,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'height',
            ),
          ),
        ),

      SizedBox(height: 30,width: 30,),

      Padding(
        padding: const EdgeInsets.all(30.0),
        child: TextField(controller: weight,
          decoration: InputDecoration(
          border: OutlineInputBorder(),
    hintText: 'weight kg',
    ),
    ),
      ),
        SizedBox(height: 30,width: 30,),

        TextButton(
          onPressed: (){
    setState((){
    calculate();
    });
    },
    child: Text('Calculate')),
    Text(result.toString())
 

  ],
      ),
    );
  }
}
