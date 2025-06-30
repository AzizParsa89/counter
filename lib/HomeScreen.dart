import "package:flutter/material.dart";

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.blue, Colors.green],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        )
      ),
      child: Center(
        child:NumCounter() ,
      )
    );
  }
}

class NumCounter extends StatefulWidget {
  const NumCounter({super.key});
  @override
  _NumCounterState createState() => _NumCounterState();
}
class _NumCounterState extends State<NumCounter>{
  var currentnumber = 0;
  void count() {
    setState(() {
      currentnumber++;
    });
  }
  void lowcount() {
    setState(() {
      currentnumber--;
    });
  }
  @override
  Widget build(context) {
    return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "$currentnumber",
              style: TextStyle(
                fontSize: 28,
                color: Colors.white
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: count,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple,
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                minimumSize: Size(200, 60), // حداقل اندازه دکمه
              ),
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  "Count",
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: lowcount,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                minimumSize: Size(200, 60), // حداقل اندازه دکمه
              ),
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  "Low",
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            )
          ],
        ) ;
  }
}