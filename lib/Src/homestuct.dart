import 'package:flutter/material.dart';
import 'package:massenger_mock_homepage/Src/creatorform.dart';
import 'package:massenger_mock_homepage/Src/routes.dart';
import 'inbox.dart';

import 'snippets.dart';

class HomeStructure extends StatefulWidget {
  static final String routeName = "/Src/homestuct";
  const HomeStructure({Key? key}) : super(key: key);

  @override
  _HomeStructureState createState() => _HomeStructureState();
}

class _HomeStructureState extends State<HomeStructure> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    setState(() {
      profileInfos;
    });
  }
  //Inbox instance = Inbox("", "", "");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        titleSpacing: 5,
        title: Text(
          "Chats",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
        elevation: 0,
        leading: Container(
          margin: EdgeInsets.only(left: 10, top: 8, right: 8),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1610650314750-c4c9eda6a031?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjgyfHxwb3J0cmFpdHN8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
                ),
              ),
              Positioned(
                top: -7,
                right: -3,
                child: Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red,
                      border: Border.all(
                        color: Colors.black,
                        width: 2.5,
                      )),
                  child: Text(
                    "3",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ),
              )
            ],
          ),
        ),
        actions: [
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(7),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey[700],
            ),
            child: Icon(
              Icons.camera_alt_rounded,
              color: Colors.white,
              size: 18,
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            // padding: EdgeInsets.all(7),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey[700],
            ),
            child: IconButton(
              padding: EdgeInsets.all(7),
              iconSize: 20,
              icon: Icon(
                Icons.edit_rounded,
                color: Colors.white,
                // size: 18,
              ),
              onPressed: () {
                Navigator.pushNamed(context, CreatorForm.routeName);
                // Navigator.push(context, MaterialPageRoute(builder: (context)=> CreatorForm()));
              },
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 35,
            margin: EdgeInsets.only(left: 10, right: 10, top: 8, bottom: 5),
            width: double.infinity,
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
            decoration: BoxDecoration(
              color: Colors.grey[800],
              borderRadius: BorderRadius.circular(24),
              //backgroundBlendMode: BlendMode.dstOut,
            ),
            child: Stack(
              children: [
                Container(
                    width: 70,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.search_outlined,
                          color: Colors.grey,
                          size: 16,
                        ),
                        Text(
                          "Search",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    )),
                Container(
                    height: 10,
                    child: TextField(
                      showCursor: false,
                      decoration: InputDecoration(
                        enabledBorder: InputBorder.none,
                        contentPadding: EdgeInsets.all(5),
                      ),
                    ))
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10, right: 8, top: 8, bottom: 5),
            height: 90,
            width: double.infinity,
            // color: Colors.white,

            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  height: 90,
                  width: 75,
                  child: Column(
                    children: [
                      Expanded(
                          flex: 5,
                          child: Container(
                            margin: EdgeInsets.all(5),
                            child: CircleAvatar(
                              radius: 32,
                              backgroundColor: Colors.grey[700],
                              child: Icon(
                                Icons.video_call_rounded,
                                color: Colors.white,
                                size: 26,
                              ),
                            ),
                          )),
                      Expanded(
                          flex: 3,
                          child: Text(
                            "Make video call",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 12, color: Colors.white),
                          ))
                    ],
                  ),
                ),
                activeViewFrame("Sasha Blouse",
                    "https://images.unsplash.com/photo-1616817846957-aa2b827d600b?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTE0fHxwb3J0cmFpdHN8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                activeViewFrame("Mostafijul Islam",
                    "https://images.unsplash.com/photo-1603384699007-50799748fc45?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mzl8fHBvcnRyYWl0c3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                activeViewFrame("Anny Shamber",
                    "https://images.unsplash.com/photo-1619300026534-8e8a76941138?ixid=MnwxMjA3fDB8MHxzZWFyY2h8ODB8fHBvcnRyYWl0c3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                activeViewFrame("Hanji Admone",
                    "https://images.unsplash.com/photo-1613971582147-ce1266b692de?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTI2fHxwb3J0cmFpdHN8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                activeViewFrame("Katrina Kaif",
                    "https://images.unsplash.com/photo-1611232658409-0d98127f237f?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjQwfHxwb3J0cmFpdHN8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                activeViewFrame("Eren Yeager",
                    "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/1e3dcc3d-45e1-4914-846c-3ffa0df29a06/db565ma-a8035ad5-a593-4b74-a980-922a1d9d80be.png/v1/fit/w_300,h_800,q_70,strp/chillin_by_bev_nap_db565ma-300w.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9ODAwIiwicGF0aCI6IlwvZlwvMWUzZGNjM2QtNDVlMS00OTE0LTg0NmMtM2ZmYTBkZjI5YTA2XC9kYjU2NW1hLWE4MDM1YWQ1LWE1OTMtNGI3NC1hOTgwLTkyMmExZDlkODBiZS5wbmciLCJ3aWR0aCI6Ijw9NzYwIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmltYWdlLm9wZXJhdGlvbnMiXX0.lOaHEZXM23X_j6ezpRg67XMPolEKun6ElaBiKcs0D1A"),
                activeViewFrame("Mikasa Ackerman",
                    "https://images.unsplash.com/photo-1584088743546-db0289ee9b07?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTg5fHxwb3J0cmFpdHN8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                activeViewFrame("Levi Ackerman",
                    "https://images.unsplash.com/photo-1611756468043-60b953471279?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTgzfHxwb3J0cmFpdHN8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                activeViewFrame("Erwin Smith",
                    "https://images.unsplash.com/photo-1575308118336-95434be06db7?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTc2fHxwb3J0cmFpdHN8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                activeViewFrame("Armin Jhonson",
                    "https://images.unsplash.com/photo-1516257984-b1b4d707412e?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTU1fHxwb3J0cmFpdHN8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                activeViewFrame("Kenny Sabastian",
                    "https://images.unsplash.com/photo-1605332134997-ae67492b8942?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTQxfHxwb3J0cmFpdHN8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
              ],
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 10, right: 10, top: 0),
              height: 518,
              width: double.infinity,
              //color: Colors.white,

              child: ListView(
                children: profileInfos.map((proInfo) => InboxFrame(status:"${proInfo.status}", name:"${proInfo.name}", text:"${proInfo.text}", imglink:"${proInfo.imgLink}", sound: "${proInfo.sound}",
                delete: () {
                  setState(() {
                    profileInfos.remove(proInfo);
                  });
                },
                )).toList(),


              ),
            ),
          ),
          BottomNavigationBar(
            //fixedColor: Colors.white,
            selectedItemColor: Colors.blue,
            iconSize: 20,
            unselectedItemColor: Colors.white,
            backgroundColor: Colors.black,
            unselectedLabelStyle: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w500
            ),
            selectedLabelStyle: TextStyle(
              fontWeight: FontWeight.w600,
            ),
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.chat_bubble_rounded,
                  // color: Colors.grey,
                ),
                label: 'Chats',
              ),
              /*BottomNavigationBarItem(
                  icon: Icon(Icons.business),
                  label: 'Business',
                ),*/
              BottomNavigationBarItem(
                icon: Icon(Icons.people_rounded,
                  color: Colors.white,),
                label: "People",
              ),
            ],
            //currentIndex: ,
            //selectedItemColor: Colors.amber[800],
            //onTap: _onItemTapped,
          ),

        ],
      ),
    );
  }
}
