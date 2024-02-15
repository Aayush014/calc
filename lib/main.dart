import 'package:flutter/material.dart';


void main()
{
  runApp(const CalcScreen());
}
class CalcScreen extends StatefulWidget {
  const CalcScreen({super.key});

  @override
  State<CalcScreen> createState() => _CalcScreenState();
}

class _CalcScreenState extends State<CalcScreen> {
  int num = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blueGrey,
            leading: const Icon(
              Icons.menu,
              color: Colors.white,
            ),
            title: const Text(
              'Calc',
              style:
              TextStyle(color: Colors.white ),
            ),
            centerTitle: true,
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '$num',
                  style: const TextStyle(
                    fontSize: 100,
                    color: Colors.blueGrey,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          num-=2;
                        });
                      },
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 17),
                        height:  50,
                        width: 120,
                        decoration: BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        alignment: Alignment.center,
                        child: const Text('  -2  ',style: TextStyle(color: Colors.white,fontSize: 30),),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          num+=2;
                        });
                      },
                      child: Container(
                        margin: const EdgeInsets.only(left: 40),
                        height: 50,
                        width: 120,
                        decoration: BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        alignment: Alignment.center,
                        child: const Text('  +2  ',style: TextStyle(color: Colors.white,fontSize: 30),),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 35),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          num-=4;
                        });
                      },
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 17),
                        height: 50,
                        width: 120,
                        decoration: BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        alignment: Alignment.center,
                        child: const Text('  -4  ',style: TextStyle(color: Colors.white,fontSize: 30),),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          num+=4;
                        });
                      },
                      child: Container(
                        margin: const EdgeInsets.only(left: 40),
                        height: 50,
                        width: 120,
                        decoration: BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        alignment: Alignment.center,
                        child: const Text('  +4  ',style: TextStyle(color: Colors.white,fontSize: 30),),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          num = 0;
                        });
                      },
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 120),
                        height: 50,
                        width: 120,
                        decoration: BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        alignment: Alignment.center,
                        child: const Text(' Clear ',style: TextStyle(color: Colors.white,fontSize: 30),),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}