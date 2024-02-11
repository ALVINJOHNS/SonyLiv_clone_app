import 'package:flutter/material.dart';

class MoreScreen extends StatelessWidget {
  MoreScreen({super.key});
  
  List<Map<String, dynamic>> more = [
    {
      'icon': Icons.notifications_outlined,
      'text': 'Notification Inbox',
    },
    {
      'icon': Icons.tv_outlined,
      'text': 'Activate TV',
    },
    {
      'icon': Icons.settings_outlined,
      'text': 'Settings & Preferences',
    },
    {
      'icon': Icons.last_page,
      'text': ' Terms of Use',
    },
    {
      'icon': Icons.forum_outlined,
      'text': 'Privacy Policy',
    },
    {
      'icon': Icons.help_outline,
      'text': 'Help & FAQs',
    },
    {
      'icon': Icons.chat_outlined,
      'text': 'Chat With Us',
    },
    {
      'icon': Icons.note_add,
      'text': 'Constact Us',
    },
    {
      'icon': Icons.percent_outlined,
      'text': 'Activate Offer',
    },
    {
      'icon': Icons.supervised_user_circle,
      'text': 'Content Redressal Mechanism',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Account Settings'),
        backgroundColor: Color.fromARGB(0, 0, 0, 0),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      Icon(
                        more[index]['icon'],
                        size: 25,
                        color: Color.fromARGB(255, 224, 224, 224),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.05,
                      ),
                      Text(
                        more[index]['text'],
                        style: TextStyle(
                            color: Color.fromARGB(255, 224, 224, 224),
                            fontSize: 18,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                )
              ],
            );
          },
          separatorBuilder: (context, index) => Divider(
                color: Color.fromARGB(255, 65, 65, 65),
              ),
          itemCount: more.length),
    );
  }
}
