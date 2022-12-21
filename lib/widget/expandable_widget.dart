import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Item {
  final String text;
  final IconData icons;
  bool isExpanded;
  Item({required this.text, required this.icons, this.isExpanded = false});
}

class ExpandableWidget extends StatefulWidget {
  const ExpandableWidget({super.key});

  @override
  State<ExpandableWidget> createState() => _ExpandableWidgetState();
}

class _ExpandableWidgetState extends State<ExpandableWidget> {
  @override
  Widget build(BuildContext context) {
    List<Item> items = [
      Item(text: 'Bio', icons: Icons.person),
      Item(text: 'Contact', icons: Icons.details),
      Item(text: 'Address', icons: Icons.home),
      Item(text: 'Socials', icons: Icons.phone_in_talk),
      Item(text: 'Settings', icons: Icons.settings),
    ];

    return Scaffold(
      backgroundColor: Color(0xffebfdf3),
      drawer: Drawer(
        width: MediaQuery.of(context).size.width * 0.86,
        child: Expanded(
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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.black,
                      backgroundImage: AssetImage('assets/images/my_pic.jpg'),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Scientist',
                      style: TextStyle(fontSize: 27, color: Color(0xffebfdf3)),
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
                                          style: TextStyle(
                                              color: const Color(0xffebfdf3)),
                                        ),
                                        onTap: () {},
                                      ),
                                    ],
                                  ),
                                )
                                .toList(),
                          )),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      body: SafeArea(child: Container()),
    );
  }
}
