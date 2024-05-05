import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Meet extends StatefulWidget {
  const Meet({super.key});

  @override
  State<Meet> createState() => _MeetState();
}

class _MeetState extends State<Meet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 40,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: const Padding(
                  padding: EdgeInsets.only(left: 60.0, top: 10),
                  child: Text('New meeting', selectionColor: Colors.white),
                ),
              ),
              Container(
                height: 40,
                width: 200,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: const Padding(
                  padding: EdgeInsets.only(left: 40.0, top: 10),
                  child: Text('Join with a code', selectionColor: Colors.blue),
                ),
              )
            ],
          ),
          const Row(
            children: [
              SizedBox(
                height: 590,
                width: 500,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage("images/logo.jpg"),
                      height: 200,
                      width: 200,
                      colorBlendMode: BlendMode.lighten,
                    ),
                    Text('Get a link you can share'),
                    Text(
                        'Tap New meeting to get a link you can share to people ')
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
