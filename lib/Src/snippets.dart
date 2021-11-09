import 'package:flutter/material.dart';
import 'dart:math';
import 'inbox.dart';
import 'routes.dart';
import 'inbox.dart';

Container activeViewFrame(String name, String imgLink) {
  return Container(
    height: 90,
    width: 75,
    child: Column(
      children: [
        Expanded(
            flex: 5,
            child: Container(
              margin: EdgeInsets.all(5),
              child: CircleAvatar(
                radius: 28,
                backgroundColor: Colors.grey[700],
                backgroundImage: NetworkImage(imgLink),
              ),
            )),
        Expanded(
            flex: 3,
            child: Container(
                padding: EdgeInsets.only(left: 8, right: 8),
                child: Text(
                  name,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12, color: Colors.white),
                )))
      ],
    ),
  );
}


class ProInfo {
  String status = "notActive";
  String name = "Name";
  String text = "Massage";
  String imgLink = "Link of the image";
  String sound = "";

  ProInfo({ required this.status, required this.name,required this.imgLink,required this.text, required this.sound});
}



var creator = new Random();

int hour() {
  return creator.nextInt(12);
}
int minute() => creator.nextInt(60);




class InboxFrame extends StatelessWidget {
  String status =""; String name =""; String text=""; String imglink="";  String sound = "sound";
 var  delete = (){};


  InboxFrame({required this.name,required this.imglink,required this.text, required this.status, required this.sound, required this.delete});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.pushNamed(context, Inbox.routeName, arguments: ProInfo(status: status, name: name, imgLink: imglink, text: text, sound: sound));
        // Navigator.push(context, MaterialPageRoute(builder: (context) => Inbox(name, text, imglink)));

      },
      //onLongPress: delete(),
      child: Container(
          height: 70,
          child: Row(
            children: [
              Expanded(
                  flex: 3,
                  child: Container(
                    //margin: EdgeInsets.all(5),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          CircleAvatar(
                            radius: 28,
                            backgroundColor: Colors.grey[700],
                            backgroundImage: NetworkImage(
                              imglink,
                            ),
                          ),
                          (status == "Active")?
                          Positioned(
                            right: 0,
                            bottom: 0,
                            child: Container(
                              height: 15,
                              width: 15,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.black,
                                  width: 2.5,
                                ),
                                color: Colors.green,
                              ),
                            ),
                          ) : Container(),
                        ],
                      ),
                    ),
                  )),
              Expanded(
                  flex: 12,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey),
                      ),
                      Text(
                        text + "... · "+ hour().toString()+":"+ minute().toString() +" pm",
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  )),
              (sound == "mute")?
              Expanded(
                  flex: 1,
                  child: Icon(
                    Icons.notifications_off,
                    color: Colors.grey,
                    size: 18,
                  )) : Expanded(flex: 1, child: Container()),
            ],
          )),
    );
  }
}

