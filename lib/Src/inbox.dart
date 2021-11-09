import 'package:flutter/material.dart';
import 'package:massenger_mock_homepage/Src/snippets.dart';
import 'snippets.dart';



class Inbox extends StatefulWidget {
  static final String routeName = "/Src/inbox";
/*
  String namer; String textr; String linkr;
  Inbox(this.namer, this.textr, this.linkr) {}
*/
  //name: namer, text: textr, link: linkr

  @override
  _InboxState createState() => _InboxState();
}

class _InboxState extends State<Inbox> {
 /* String name = "";
  String text = "";
  String link = "";*/

  //_InboxState({required this.name, required this.text, required this.link});


/*
 Map<dynamic,dynamic> variables = {
   "name" : "",
   "text" : "",
   "image" : "",
 };
*/

  @override
  Widget build(BuildContext context) {
 final ProInfo variables = ModalRoute.of(context)!.settings.arguments as ProInfo;

    return SafeArea(child: Scaffold(
      //backgroundColor: Colors.black,
      appBar: AppBar( titleSpacing: 0,
        title: Container(
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(right: 10),
                child:  CircleAvatar(
                  backgroundImage: NetworkImage(
                    variables.imgLink,
                  ),
                  radius: 18,
                ),
              ),
              Text( (variables.name.split(" ")
              [0]),
                style: TextStyle(color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
       // backgroundColor: Colors.black,
        elevation: 0,
        iconTheme: Theme.of(context).iconTheme,
        /*IconThemeData(
          color: Colors.deepPurple,
        ),*/
        actions: [
          Container(
            margin: EdgeInsets.all(5),
            padding: EdgeInsets.all(7),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              // color: Colors.grey[700],
            ),
            child: Icon(
              Icons.call,
              // color: Colors.white,
              size: 24,
            ),
          ),
          Container(
            margin: EdgeInsets.all(5),
            padding: EdgeInsets.all(7),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              // color: Colors.grey[700],
            ),
            child: Icon(
              Icons.videocam_rounded,
              //color: Colors.white,
              size: 24,
            ),
          ),
          Container(
            margin: EdgeInsets.all(5),
            padding: EdgeInsets.all(7),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              // color: Colors.grey[700],
            ),
            child: Icon(
              Icons.info_rounded,
              //color: Colors.white,
              size: 24,
            ),
          ),
        ],

      ),
      body: Column(
        children: [
          Spacer(),
          Container(
            margin: EdgeInsets.only(top: 5, bottom: 5),
            height: 35,

            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 10),
                  child: CircleAvatar(
                      backgroundImage: NetworkImage(
                        variables.imgLink,
                      ),
                      radius: 22
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: Theme.of(context).colorScheme.secondary,
                    //color: Colors.grey[800],
                  ),
                  child: Text(variables.text, style: TextStyle(
                      color:Colors.white,
                      fontSize: 14
                  ),),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10, right: 10, top: 8, bottom: 5),

            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Icon(
                    Icons.menu_rounded,
                    color: Colors.blue,
                    size: 24,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.all(5),
                    padding: EdgeInsets.all(7),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      // color: Colors.grey[700],
                    ),
                    child: Icon(
                      Icons.camera_alt_rounded,
                      color: Colors.blue,
                      size: 24,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.all(5),
                    padding: EdgeInsets.all(7),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      // color: Colors.grey[700],
                    ),
                    child: Icon(
                      Icons.image_rounded,
                      color: Colors.blue,
                      size: 24,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.all(5),
                    padding: EdgeInsets.all(7),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      // color: Colors.grey[700],
                    ),
                    child: Icon(
                      Icons.keyboard_voice_rounded,
                      color: Colors.blue,
                      size: 24,
                    ),
                  ),
                ),
                Expanded(
                    flex: 4,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: 150,
                          height: 30,
                          decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.secondary,
                              // color: Colors.grey[800],
                              borderRadius: BorderRadius.circular(15)
                          ),
                        ),
                        Positioned(
                            left: 18,
                            child: Text("Aa",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                              ),)),
                        Positioned(
                            right: 13,
                            child: Icon(Icons.emoji_emotions_rounded,
                              color: Colors.blue,
                              size: 22,
                            ))
                      ],
                    )),
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.all(5),
                    padding: EdgeInsets.all(7),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      // color: Colors.grey[700],
                    ),
                    child: Icon(
                      Icons.thumb_up_alt_rounded,
                      color: Colors.blue,
                      size: 24,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
