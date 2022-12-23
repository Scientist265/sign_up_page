import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
import 'package:sign_up_page/utils/styles.dart';
import '../widget/condition_widget.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    String userName = 'UserName';
    List<Item> items = [
      Item(text: 'Bio', icons: Icons.person),
      Item(text: 'Contact', icons: Icons.details),
      Item(text: 'Address', icons: Icons.home),
      Item(text: 'Socials', icons: Icons.phone_in_talk),
      Item(text: 'Settings', icons: Icons.settings),
    ];
    return Scaffold(
      backgroundColor: const Color(0xffc6dacc),
      // Drawer Section
      drawer: Drawer(
        width: MediaQuery.of(context).size.width * 0.86,
        child: Container(
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.symmetric(vertical: 40),
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment(0.8, 1),
                colors: <Color>[
                  Color(0xff020202),
                  Color(0xff14311C),
                  Color(0xff2b4730),
                  Color(0xff2d663d),
                  Color(0xffc6dacc),
                  Color(0xffebfdf3),
                ], // Gradient from
              ),
              boxShadow: [
                BoxShadow(spreadRadius: 1, blurRadius: 2, color: Colors.grey)
              ]),
          child: Stack(
            children: [
              Column(
                children: [
                  const CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.black,
                    backgroundImage: AssetImage('assets/images/my_pic.jpg'),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        userName,
                        style: const TextStyle(
                            fontSize: 27, color: Color(0xffebfdf3)),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.edit,
                          size: 25,
                          color: Color(0xffebfdf3),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  const Text(
                    'Flutter Developer ',
                    style: TextStyle(fontSize: 18, color: Color(0xffebfdf3)),
                  ),
                  SingleChildScrollView(
                    child: SizedBox(
                      width: double.infinity,
                      child: Column(
                        children: items
                            .map(
                              (Item item) => ExpansionTile(
                                title: Text(
                                  item.text,
                                  style: const TextStyle(
                                    fontSize: 18,
                                    color: Color(0xffebfdf3),
                                  ),
                                ),
                                leading: Icon(
                                  item.icons,
                                  size: 25,
                                  color: const Color(0xffebfdf3),
                                ),
                                children: [
                                  ListTile(
                                    title: const Text(
                                      'My name is Ibraheem Omowumi, I\'m a Student of Obafemi Awolowo University,My name is Ibraheem Omowumi, ',
                                      style:
                                          TextStyle(color: Color(0xffebfdf3)),
                                    ),
                                    onTap: () {},
                                  ),
                                ],
                              ),
                            )
                            .toList(),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),

      // let's work on body of the Scaffold
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                height: 45,
                width: MediaQuery.of(context).size.width * 0.8,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xFF292929)),
                child: TextField(
                  style: TextStyle(fontSize: 18, color: Styles.primaryColor),
                  decoration: InputDecoration(
                      hintText: 'Search...',
                      hintStyle: TextStyle(color: Styles.primaryColor),
                      icon: Icon(
                        Icons.search,
                        size: 20,
                        color: Styles.primaryColor,
                      ),
                      border: const OutlineInputBorder(
                          borderSide: BorderSide.none)),
                ),
              ),
              const Gap(10),
              const CircleAvatar(
                radius: 20,
                backgroundColor: Colors.black,
                backgroundImage: AssetImage('assets/images/my_pic.jpg'),
              )
            ],
          ),
          const Gap(10),
          Container(
            height: 200,
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            decoration: Styles.boxDecoration,
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      size: 19,
                      color: Styles.primaryColor,
                    ),
                    const Gap(5),
                    Text(
                      'vancouver',
                      style:
                          TextStyle(fontSize: 18, color: Styles.primaryColor),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '+17^c',
                      style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: Styles.primaryColor),
                    ),
                    Gap(10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'H:23^c',
                          style: TextStyle(
                              fontSize: 18, color: Styles.primaryColor),
                        ),
                        Text(
                          'L:13^c',
                          style: TextStyle(
                              fontSize: 18, color: Styles.primaryColor),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Icon(
                      Icons.cloudy_snowing,
                      size: 70,
                      color: Styles.primaryColor,
                    ),
                  ],
                ),
                const Divider(
                  thickness: 1,
                  color: Colors.white10,
                ),
                const Gap(10),
                ConditionWidget(),
              ],
            ),
          ),
          const Gap(10),
          Container(
            padding: const EdgeInsets.all(20),
            height: 300,
            width: double.infinity,
            decoration: Styles.boxDecoration,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Notes',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 17,
                        color: Styles.primaryColor,
                      ),
                    ),
                    const Spacer(),
                    Icon(
                      Icons.navigate_next,
                      size: 22,
                      color: Styles.primaryColor,
                    )
                  ],
                ),
                const Gap(10),
                const MiddleBox(),
                const Gap(15),
                const MiddleBox(),
                const Gap(15),
                Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Styles.buttonColor),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const CircleAvatar(
                        radius: 10,
                        backgroundColor: Colors.black,
                        child: Icon(
                          Icons.add,
                          size: 15,
                          color: Colors.white,
                        ),
                      ),
                      const Gap(10),
                      Text(
                        'Add New Note',
                        style:
                            TextStyle(fontSize: 19, color: Styles.primaryColor),
                      )
                    ],
                  ),
                ),
                Row(
                  children: [
                    Container(
                      decoration: Styles.boxDecoration,
                    )
                  ],
                )
              ],
            ),
          ),
          const Spacer(),
        ]),
      ),
    );
  }
}

class MiddleBox extends StatelessWidget {
  const MiddleBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: [
          Container(
            height: 70,
            width: 100,
            decoration: BoxDecoration(
              image: const DecorationImage(
                  image: AssetImage('assets/images/apples.jpeg'),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          Gap(10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'May 24 - 5:43PM',
                style: TextStyle(fontSize: 18, color: Styles.primaryColor),
              ),
              const Text(
                'Excellent harvest, the Apples have \na rich flavor and aroma',
                style: TextStyle(color: Colors.white24),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class Item {
  final String text;
  final IconData icons;
  bool isExpanded;
  Item({required this.text, required this.icons, this.isExpanded = false});
}
/*
Column(
children: [
Row(
mainAxisAlignment: MainAxisAlignment.center,
children: [
Container(
padding: const EdgeInsets.symmetric(
vertical: 10, horizontal: 10),
height: 45,
width: MediaQuery.of(context).size.width * 0.8,
decoration: BoxDecoration(
borderRadius: BorderRadius.circular(20),
color: const Color(0xFF292929)),
child: TextField(
style:
TextStyle(fontSize: 18, color: Styles.primaryColor),
decoration: InputDecoration(
hintText: 'Search...',
hintStyle: TextStyle(color: Styles.primaryColor),
icon: Icon(
Icons.search,
size: 20,
color: Styles.primaryColor,
),
border: const OutlineInputBorder(
borderSide: BorderSide.none)),
),
),
const Gap(10),
const CircleAvatar(
radius: 20,
backgroundColor: Colors.black,
backgroundImage: AssetImage('assets/images/my_pic.jpg'),
)
],
),
Gap(10),
Container(
height: 200,
width: double.infinity,
padding: const EdgeInsets.all(20),
decoration: Styles.boxDecoration,
child: Column(
children: [
Row(
children: [
Icon(
Icons.location_on_outlined,
size: 19,
color: Styles.primaryColor,
),
const Gap(5),
Text(
'vancouver',
style: TextStyle(
fontSize: 18, color: Styles.primaryColor),
),
],
),
Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: [
Text(
'+17^c',
style: TextStyle(
fontSize: 50,
fontWeight: FontWeight.bold,
color: Styles.primaryColor),
),
Gap(10),
Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Text(
'H:23^c',
style: TextStyle(
fontSize: 18, color: Styles.primaryColor),
),
Text(
'L:13^c',
style: TextStyle(
fontSize: 18, color: Styles.primaryColor),
),
],
),
const Spacer(),
Icon(
Icons.cloudy_snowing,
size: 70,
color: Styles.primaryColor,
),
],
),
const Divider(
thickness: 1,
color: Colors.white10,
),
const Gap(10),
ConditionWidget(),
],
),
),
const Gap(10),
Container(
padding: const EdgeInsets.all(20),
height: 300,
width: double.infinity,
decoration: Styles.boxDecoration,
child: Column(
children: [
Row(
mainAxisAlignment: MainAxisAlignment.center,
children: [
Text(
'Notes',
style: TextStyle(
fontWeight: FontWeight.w500,
fontSize: 17,
color: Styles.primaryColor,
),
),
const Spacer(),
Icon(
Icons.navigate_next,
size: 22,
color: Styles.primaryColor,
)
],
),
const Gap(10),
const MiddleBox(),
const Gap(15),
const MiddleBox(),
const Gap(15),
Container(
height: 50,
width: double.infinity,
decoration: BoxDecoration(
borderRadius: BorderRadius.circular(15),
color: Styles.buttonColor),
child: Row(
mainAxisAlignment: MainAxisAlignment.center,
children: [
const CircleAvatar(
radius: 10,
backgroundColor: Colors.black,
child: Icon(
Icons.add,
size: 15,
color: Colors.white,
),
),
const Gap(10),
Text(
'Add New Note',
style: TextStyle(
fontSize: 19, color: Styles.primaryColor),
)
],
),
),
Row(
children: [
Container(
decoration: Styles.boxDecoration,
)
],
)
],
),
),
const Spacer(),
],
)*/
