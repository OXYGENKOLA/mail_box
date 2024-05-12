import 'package:flutter/material.dart';

class Meet extends StatefulWidget {
  const Meet({super.key});

  @override
  State<Meet> createState() => _MeetState();
}

class _MeetState extends State<Meet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10.0, horizontal: 14),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // search row
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 6),
                        decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.menu,
                                      color: Colors.black,
                                    )),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Meet',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.grey[700]),
                                ),
                              ],
                            ),
                            const CircleAvatar(
                              maxRadius: 18,
                              backgroundImage:
                                  AssetImage('lib/images/mylogo.png'),
                            )
                          ],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  height: 40,
                                  width: 150,
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  child: const Padding(
                                    padding:
                                        EdgeInsets.only(left: 30.0, top: 10),
                                    child: Text('New meeting',
                                        selectionColor: Colors.white),
                                  ),
                                ),
                                Container(
                                  height: 40,
                                  width: 150,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black),
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  child: const Padding(
                                    padding:
                                        EdgeInsets.only(left: 20.0, top: 10),
                                    child: Text('Join with a code',
                                        selectionColor: Colors.blue),
                                  ),
                                )
                              ],
                            ),
                            const Row(
                              children: [
                                SizedBox(
                                  height: 550,
                                  width: 360,
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 100.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Image(
                                          image: AssetImage(
                                              "lib/images/mylogo.png"),
                                          height: 200,
                                          width: 200,
                                          colorBlendMode: BlendMode.lighten,
                                        ),
                                        Text(
                                          'Get a link you can share',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ]))));
  }
}
