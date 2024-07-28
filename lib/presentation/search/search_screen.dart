import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController searchboxcontroller = TextEditingController();
  var check = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  TextField(
                      onChanged: (value) {
                        setState(() {
                          check = 'cfg';
                        });
                      },
                      controller: searchboxcontroller,
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          hintText: 'Search for shows, movies, sports here')),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      (check == '' || searchboxcontroller.text == '')
                          ? IconButton(
                              onPressed: (() {}), icon: Icon(Icons.mic))
                          : IconButton(
                              onPressed: (() {}), icon: Icon(Icons.close))
                    ],
                  )
                ],
              ),
            ),
            Text(
              'data',
              style: TextStyle(color: Colors.white),
            ),
            // Image(
            //     image: NetworkImage(
            //         'https://images.pexels.com/photos/1681010/pexels-photo-1681010.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1')),

            // ListView.separated(
            //     itemBuilder: ((context, index) {
            //       return Row(
            //         children: [
            //           Text(
            //             'data',
            //             style: TextStyle(color: Colors.white),
            //           )
            //         ],
            //       );
            //     }),
            //     separatorBuilder: ((context, index) {
            //       return Divider(
            //         height: 5,
            //         color: Colors.white,
            //       );
            //     }),
            //     itemCount: 5)
          ],
        ),
      ),
    );
  }
}
