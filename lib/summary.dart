import 'package:flutter/material.dart';
import 'package:learning/widgets/common_widget.dart';

class Summary extends StatelessWidget {
  const Summary({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Summary",
          style: TextStyle(
            color: Colors.brown,
            fontSize: 20,
          ),
        ),
        backgroundColor: Colors.brown[50],
        elevation: 0,
        toolbarHeight: 50,
      ),
      body: content(),
    );
  }

  Widget content() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 150,
            child: Image.asset('assets/image.png'),
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            children: [
              Text(
                "Order :",
                style: TextStyle(
                  color: Colors.brown,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  children: [
                    Text(
                      "Latte",
                      style: TextStyle(
                        color: Colors.brown,
                        fontSize: 20,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "x1",
                      style: TextStyle(
                        color: Colors.brown,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "---------------------------------------------",
                style: TextStyle(color: Colors.brown),
              ),
              SizedBox(
                height: 15,
              ),
              summaryDisplay("Total", "XXX.XX"),
              SizedBox(
                height: 15,
              ),
              summaryDisplay("Tax", "XX.XX"),
              SizedBox(
                height: 15,
              ),
              summaryDisplay("Discount", "X.XX"),
              SizedBox(
                height: 20,
              ),
              submitButton("Pay")
            ],
          )
        ],
      ),
    );
  }
}
