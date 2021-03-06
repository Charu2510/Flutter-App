import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'HEALTH CARE APP';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: ThemeData(scaffoldBackgroundColor: const Color.fromARGB(43, 236, 196, 83)),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 132, 220, 231),
          title: const Text("Your HEALTH is our Priority", textAlign: TextAlign.center, style: TextStyle(color: Colors.deepPurple,fontSize: 30),),
          ),
        body: ListView(
          children:[ Container(
              decoration: const BoxDecoration(
                shape: BoxShape.rectangle,
                image: DecorationImage(
                  image: AssetImage('background.jpg'),
                  fit: BoxFit.cover,
                ), 
              ),
              margin: const EdgeInsets.all(25),
              padding: const EdgeInsets.all(40),
              height: 150,
              width: 450,
            ),
          const MyStatefulWidget(),
          Row(
            children: [
                const SizedBox(width: 10),
                const Text("#", style: TextStyle(color: Colors.black, fontSize: 40)),
                const SizedBox(width: 50),
                Image.asset("mig.jpg",height: 150,width: 150),
                const SizedBox(width: 20),
                const Text("Try Hastapadasana, Setu bandhasana, Shishuasana\n Include leafy veggies, tuna, avacado, omega-3.", style: TextStyle(color: Colors.purple, fontSize: 13)),
            ],
          ),
          Row(
            children: [
                const SizedBox(width: 10),
                const Text("#", style: TextStyle(color: Colors.black, fontSize: 40)),
                const SizedBox(width: 50),
                Image.asset("kidney.jpg",height: 150,width: 150),
                const SizedBox(width: 20),
                const Text("Try Mandukasana, Vakrasana, Ardha matyasana \n Include cauliflower, sea bass, egg whites, garlic in your diet.", style: TextStyle(color: Colors.purple, fontSize: 13)),
            ],
          ),
          Row(
            children: [
                const SizedBox(width: 10),
                const Text("#", style: TextStyle(color: Colors.black, fontSize: 40)),
                const SizedBox(width: 50),
                Image.asset("heart.jpg",height: 150,width: 150),
                const SizedBox(width: 20),
                const Text("Try Utthita Trikonasana, Paschimottanasana, Ardha matsyendrasana \n Include whole grain, nuts, seeds, fruits, veggies, fish in your diet.", style: TextStyle(color: Colors.purple, fontSize: 12)),

              ],
          ),
          Row(
            children: [
                const SizedBox(width: 10),
                const Text("#", style: TextStyle(color: Colors.black, fontSize: 40)),
                const SizedBox(width: 50),
                Image.asset("bp.jpg",height: 150,width: 150),
                const SizedBox(width: 20),
                const Text("Try Balasana, Sukhasana, Shavasana \n Include beans, fish, citrus food, carrots in your diet.", style: TextStyle(color: Colors.purple, fontSize: 13)),
            ],
          ),   
          Row(
            children: [
                const SizedBox(width: 10),
                const Text("#", style: TextStyle(color: Colors.black, fontSize: 40)),
                const SizedBox(width: 50),
                Image.asset("diabetes.jpg",height: 150,width: 150),
                const SizedBox(width: 20),
                const Text("Dhanusana, Shavasana, Mandukasana \n Include fruits, veggies, chicken, fish, milk, yogurt.", style: TextStyle(color: Colors.purple, fontSize: 13)),
            ],
          ),  ],
        ),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  String dropdownValue = 'Diabetes';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
        });
      },
      items: <String>['Diabetes', 'Heart_Issue', 'Obesities', 'Blood_Pressure','Diarrhoea']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}