import 'package:dotted_border/dotted_border.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.purple,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40))),
            width: width,
            height: height * 0.35,
          ),
          SafeArea(
              child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  padding: EdgeInsets.all(5),
                  alignment: Alignment.center,
                  child: Text(
                    'مرحبا بالعالم',
                    style: TextStyle(color: Colors.orange),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("مرحبا بالعالم",
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      Row(
                        children: [
                          Text(
                            'مرحبا بالعالم',
                            style: TextStyle(color: Colors.white),
                          ),
                          Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.orange, width: 0.5),
                                borderRadius: BorderRadius.circular(1000)),
                            child: Icon(
                              Icons.arrow_forward,
                              color: Colors.orange,
                              size: 17,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            'بالعالم مرحبا',
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(width: 3),
                          Icon(
                            Icons.edit,
                            size: 15,
                            color: Colors.orange,
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'بالعالم مرحبا',
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(width: 3),
                          Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(1000),
                                border: Border.all(
                                    color: Colors.orange, width: 0.5),
                              ),
                              child: Icon(
                                Icons.add,
                                color: Colors.orange,
                                size: 12,
                              ))
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: FlipCard(
                    direction: FlipDirection.HORIZONTAL, // default
                    front: Container(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      height: 200,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('VISA',
                                    style: TextStyle(
                                        color: Colors.blue,
                                        fontSize: 28,
                                        fontStyle: FontStyle.italic,
                                        fontWeight: FontWeight.bold)),
                                Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              color: Colors.blue,
                                              height: 12,
                                              width: 35,
                                            ),
                                            SizedBox(width: 3),
                                            Text(
                                              'CSID',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 2,
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              color: Colors.green,
                                              height: 12,
                                              width: 35,
                                            ),
                                            SizedBox(width: 3),
                                            Text(
                                              'mada',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        ),
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            '4907  ****  ****  4112',
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.2),
                          ),
                          SizedBox(height: 5),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Abdul K. Ali',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      'Expire Date',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    Text(
                                      '12/23',
                                      style: TextStyle(color: Colors.grey),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.orange,
                                radius: 2.5,
                              ),
                              SizedBox(width: 2),
                              CircleAvatar(
                                backgroundColor: Colors.grey,
                                radius: 2.5,
                              ),
                              SizedBox(width: 2),
                              CircleAvatar(
                                backgroundColor: Colors.grey,
                                radius: 2.5,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    back: Container(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      height: 200,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                child: Text(
                                  'some small text here to simulate the real life card some small text here',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 8),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                height: 35,
                                width: double.infinity,
                                color: Colors.black45,
                              )
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                    alignment: Alignment.centerRight,
                                    child: Text(
                                      'مرحبا بالعالم',
                                      style: TextStyle(color: Colors.grey),
                                    )),
                                Container(
                                  height: 30,
                                  width: double.infinity,
                                  color: Colors.grey[300],
                                ),
                                Container(
                                    alignment: Alignment.centerRight,
                                    child: Text(
                                      'CVC/CVV',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 12),
                                    )),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(15),
                            alignment: Alignment.center,
                            child: Text(
                              'some small text here to simulate the real life card some small text here some small text here to simulate the real life card some small text here some small text here to simulate the real life card some small text here',
                              style: TextStyle(color: Colors.grey, fontSize: 8),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        DottedBorder(
                          color: Colors.grey,
                          borderType: BorderType.RRect,
                          radius: Radius.circular(15),
                          child: Container(
                            height: 120,
                            width: (MediaQuery.of(context).size.width - 55) / 3,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(3),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(1000),
                                      border: Border.all(
                                          width: 0.5, color: Colors.orange)),
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.orange,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text('مرحبا بالعالم')
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 120,
                          width: (MediaQuery.of(context).size.width - 55) / 3,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.purple),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: 35,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                '(1) بالعالم',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 120,
                          width: (MediaQuery.of(context).size.width - 55) / 3,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: 35,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                '(4) بالعالم',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Card(
                  margin: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'مرحبا بالعالم',
                              style: TextStyle(color: Colors.black),
                            ),
                            Text(
                              'مرحبا بالعالم',
                              style: TextStyle(color: Colors.black),
                            ),
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Row(
                                      children: [
                                        CircleAvatar(
                                          radius: 6,
                                          child: Icon(
                                            Icons.done,
                                            size: 10,
                                          ),
                                        ),
                                        SizedBox(width: 5),
                                        Text(
                                          'مرحبا بالعالم',
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          '24',
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 11),
                                        ),
                                        SizedBox(width: 5),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.star,
                                              color: Colors.grey,
                                              size: 13,
                                            ),
                                            SizedBox(width: 2),
                                            Icon(
                                              Icons.star,
                                              color: Colors.grey,
                                              size: 13,
                                            ),
                                            SizedBox(width: 2),
                                            Icon(
                                              Icons.star,
                                              color: Colors.orange,
                                              size: 13,
                                            ),
                                            SizedBox(width: 2),
                                            Icon(
                                              Icons.star,
                                              color: Colors.orange,
                                              size: 13,
                                            ),
                                            SizedBox(width: 2),
                                            Icon(
                                              Icons.star,
                                              color: Colors.orange,
                                              size: 13,
                                            ),
                                            SizedBox(width: 2),
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Stack(
                                  children: [
                                    CircleAvatar(
                                      radius: 15,
                                      backgroundImage:
                                          AssetImage('assets/circle.png'),
                                    ),
                                    Positioned(
                                      left: 0,
                                      bottom: 0,
                                      child: CircleAvatar(
                                        backgroundColor: Colors.green,
                                        radius: 4,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 4),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                        decoration: BoxDecoration(
                            color: Colors.purple,
                            borderRadius: BorderRadius.circular(5)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text(
                                  'بالعالم',
                                  style: TextStyle(color: Colors.orange),
                                ),
                                Text(
                                  'بالعالم',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  'بالعالم',
                                  style: TextStyle(color: Colors.orange),
                                ),
                                Text(
                                  'بالعالم',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  'بالعالم',
                                  style: TextStyle(color: Colors.orange),
                                ),
                                Text(
                                  'بالعالم',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  'بالعالم',
                                  style: TextStyle(color: Colors.orange),
                                ),
                                Text(
                                  'بالعالم',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  'بالعالم',
                                  style: TextStyle(color: Colors.orange),
                                ),
                                Text(
                                  'بالعالم',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 4),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'بالعالم',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                Text('1,245')
                              ],
                            ),
                            Text('بالعالمبالعالم بالعالم')
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  alignment: Alignment.centerLeft,
                  child: Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(17),
                        color: Colors.yellow),
                    child: Text('بالعالم'),
                  ),
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
