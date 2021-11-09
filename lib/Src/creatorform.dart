import 'package:flutter/material.dart';
import 'package:massenger_mock_homepage/Src/homestuct.dart';
import 'package:massenger_mock_homepage/Src/routes.dart';
import 'snippets.dart';
import 'inbox.dart';

class CreatorForm extends StatefulWidget {
  static final String routeName = "/Src/creatorform";

  const CreatorForm({Key? key}) : super(key: key);

  @override
  _CreatorFormState createState() => _CreatorFormState();
}

class _CreatorFormState extends State<CreatorForm> {
  final nameController = TextEditingController();
  String name = "";

  final textController = TextEditingController();
  String text = "";

  final linkController = TextEditingController();
  String link = "";

  String status = "Active";
  String sound = "sound";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    nameController.addListener(() {
      //print("$nameController");
      setState(() {
        name = nameController.text;
      });
    });

    textController.addListener(() {
      setState(() {
        text = textController.text;
      });
    });

    linkController.addListener(() {
      setState(() {
        link = linkController.text;
      });
    });
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the widget tree.
    // This also removes the _printLatestValue listener.
    nameController.dispose();
    textController.dispose();
    linkController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: Theme.of(context).iconTheme,
/*IconThemeData(
  color: Colors.deepPurple,
),
*/
        backgroundColor: Colors.black,
        title: Text(
          "Create a new Inbox",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => HomeStructure()));
          },
        ),
      ),
      backgroundColor: Colors.black,
      body: Container(
        width: double.infinity,
        // color: Colors.grey[700],
        margin: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              margin: EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                style: TextStyle(
                  color: Colors.white,
                ),
                decoration: InputDecoration(
                  labelText: "NAME",
                  hintText: "Give the name of the profile you wanna create -",
                  prefixIcon: Icon(
                    Icons.drive_file_rename_outline,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                 /* border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  filled: true,
                  fillColor: Colors.black,
                  floatingLabelStyle: TextStyle(
                   // color: Colors.white,
                    fontWeight: FontWeight.w800,
                    fontSize: 24,
                  ),
                  hintStyle: TextStyle(
                      color: Colors.grey[700], fontWeight: FontWeight.w600),
                  labelStyle: TextStyle(
                      // color: Colors.white,
                      fontWeight: FontWeight.w700),*/
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: TextField(
                controller: textController,
                style: TextStyle(
                 // color: Colors.white,
                ),
                decoration: InputDecoration(
                  labelText: "TEXT",
                  hintText: "Give the message :",
                  prefixIcon: Icon(
                    Icons.text_fields_rounded,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                 /* border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  filled: true,
                  fillColor: Colors.black,
                  floatingLabelStyle: TextStyle(
                    //color: Colors.white,
                    fontWeight: FontWeight.w800,
                    fontSize: 24,
                  ),
                  hintStyle: TextStyle(
                      color: Colors.grey[700], fontWeight: FontWeight.w600),
                  labelStyle: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w700),*/
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: TextField(
                controller: linkController,
                style: TextStyle(
                  color: Colors.white,
                ),
                decoration: InputDecoration(
                  labelText: "IMAGE",
                  hintText: "Give the image link :",
                  prefixIcon: Icon(
                    Icons.image_rounded,
                   color: Theme.of(context).colorScheme.primary,
                   // color: Colors.blueAccent,
                  ),
                 /* border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  filled: true,
                  fillColor: Colors.black,
                  floatingLabelStyle: TextStyle(
                   // color: Colors.white,
                    fontWeight: FontWeight.w800,
                    fontSize: 24,
                  ),
                  hintStyle: TextStyle(
                     // color: Colors.grey[700],
                      fontWeight: FontWeight.w600),
                  labelStyle: TextStyle(
                    //  color: Colors.white,
                      fontWeight: FontWeight.w700),*/
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                    child: Container(
                  margin: EdgeInsets.all(5),
                  child: ElevatedButton(
                    /*  style:                       (status == "Active")?
                    ButtonStyle(
                      backgroundColor: Colors.green,
                    ): ButtonStyle(
              backgroundColor: Colors.green,
            ),*/
                    onPressed: () {
                      setState(() {
                        status = "Active";
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.all(8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("ACTIVE"),
                          (status == "Active")
                              ? Icon(
                                  Icons.check_circle,
                                  //color: Colors.deepPurple,
                                )
                              : Container(),
                        ],
                      ),
                    ),
                  ),
                )),
                Expanded(
                    child: Container(
                  margin: EdgeInsets.all(5),
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        status = "Away";
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.all(8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "AWAY",
                            style: TextStyle(),
                          ),
                          (status == "Away")
                              ? Icon(
                                  Icons.check_circle,
                                  //color: Colors.deepPurple,
                                )
                              : Container(),
                        ],
                      ),
                    ),
                  ),
                )),
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: Container(
                  margin: EdgeInsets.all(5),
                  child: ElevatedButton(
                    /*  style:                       (status == "Active")?
                    ButtonStyle(
                      backgroundColor: Colors.green,
                    ): ButtonStyle(
              backgroundColor: Colors.green,
            ),*/
                    onPressed: () {
                      setState(() {
                        sound = "sound";
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.all(8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("ALLOW"),
                          (sound == "sound")
                              ? Icon(
                                  Icons.check_circle,
                                 // color: Colors.deepPurple,
                                )
                              : Container(),
                        ],
                      ),
                    ),
                  ),
                )),
                Expanded(
                    child: Container(
                  margin: EdgeInsets.all(5),
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        sound = "mute";
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.all(8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "MUTED",
                            style: TextStyle(),
                          ),
                          (sound == "mute")
                              ? Icon(
                                  Icons.check_circle,
                                 // color: Colors.deepPurple,
                                )
                              : Container(),
                        ],
                      ),
                    ),
                  ),
                )),
              ],
            ),
            Container(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        profileInfos.add(ProInfo(
                            status: status,
                            name: name,
                            imgLink: link,
                            text: text,
                            sound: sound));
                      });
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomeStructure()));
                    },
                    child: Text(
                      "ADD PERSON",
                      style: TextStyle(fontSize: 18),
                    ))),
          ],
        ),
      ),
    );
  }
}
