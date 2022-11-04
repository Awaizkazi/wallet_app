import 'package:flutter/material.dart';

class Likes extends StatefulWidget {
  const Likes({super.key});

  @override
  State<Likes> createState() => _LikesState();
}

class _LikesState extends State<Likes> {
  var imageList = [
    'https://media.istockphoto.com/photos/gateway-of-india-mumbai-maharashtra-monument-landmark-famous-place-picture-id1307189136?b=1&k=20&m=1307189136&s=170667a&w=0&h=F-BSrbduokK7pz1AEOwOGuoDe2xd28wnSyZpll4Jzks=',
    'https://media.istockphoto.com/photos/gateway-of-india-mumbai-maharashtra-monument-landmark-famous-place-picture-id1307189136?b=1&k=20&m=1307189136&s=170667a&w=0&h=F-BSrbduokK7pz1AEOwOGuoDe2xd28wnSyZpll4Jzks=',
    'https://media.istockphoto.com/photos/gateway-of-india-mumbai-maharashtra-monument-landmark-famous-place-picture-id1307189136?b=1&k=20&m=1307189136&s=170667a&w=0&h=F-BSrbduokK7pz1AEOwOGuoDe2xd28wnSyZpll4Jzks=',
    'https://media.istockphoto.com/photos/gateway-of-india-mumbai-maharashtra-monument-landmark-famous-place-picture-id1307189136?b=1&k=20&m=1307189136&s=170667a&w=0&h=F-BSrbduokK7pz1AEOwOGuoDe2xd28wnSyZpll4Jzks='
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: ((context, index) {
          return Container(
            child: Column(
              children: [
                LikesContainer(),
              ],
            ),
          );
        }),
      ),
    );
  }

  Widget LikesContainer() {
    return Card(
      child: Row(
        children: [
          Image.network(
            'https://media.istockphoto.com/photos/gateway-of-india-mumbai-maharashtra-monument-landmark-famous-place-picture-id1307189136?b=1&k=20&m=1307189136&s=170667a&w=0&h=F-BSrbduokK7pz1AEOwOGuoDe2xd28wnSyZpll4Jzks=',
            width: 80,
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Post ',
                      style: TextStyle(color: Colors.grey[700], fontSize: 17),
                    ),
                    TextSpan(
                      text: '25 September 2022 7:33PM',
                      style: TextStyle(color: Colors.black, fontSize: 13),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 3,
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: '@profile-id ',
                      style: TextStyle(color: Colors.blue, fontSize: 17),
                    ),
                    TextSpan(
                      text: 'and',
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ),
                  ],
                ),
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Others 175 liked Yor Post',
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
