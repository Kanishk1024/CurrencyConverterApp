import 'package:flutter/material.dart';

class CCMaterialPage extends StatefulWidget {
  const CCMaterialPage({super.key});

  @override
  State<CCMaterialPage> createState() {
    return _CCMaterialPageState();
  }
}

class _CCMaterialPageState extends State<CCMaterialPage> {
  double result = 0;
  TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    const border = OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(4)),
      borderSide: BorderSide(
        color: Color(0xFF000000), //by default black color
        width: 1, //by default
        style: BorderStyle.solid, // by default
      ),
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Currency Converter",
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
          ),
        ),
      ),
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "INR ${result.toStringAsFixed(2)}",
              style: const TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.w800,
                  color: Color.fromARGB(255, 255, 255, 255)),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: textEditingController,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
                keyboardType: TextInputType.numberWithOptions(
                  decimal: true,
                  // signed: true; //for -ve sign
                ),
                decoration: const InputDecoration(
                  // label: Text(
                  //   "Please enter amount in USD",
                  //   style: TextStyle(color: Colors.white, fontSize: 20),
                  // ),
                  hintText: "Please enter amount in USD",
                  hintStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                  prefixIcon: Icon(Icons.monetization_on),
                  prefixIconColor: Colors.black,
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                onSubmitted: (value) {
                  result = double.parse(value) * 81;
                  setState(() {});
                },
              ),
            ),

            //Buttons
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                onPressed: () {
                  result = double.parse(textEditingController.text) * 81;
                  setState(() {});
                },
                style: ElevatedButton.styleFrom(
                    elevation: 7,
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    minimumSize: const Size(double.infinity, 50),
                    shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    )),
                child: const Text(
                  "Convert",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
