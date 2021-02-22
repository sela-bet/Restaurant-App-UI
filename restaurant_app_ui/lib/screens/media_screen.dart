import 'package:flutter/material.dart';
import '../model/media_model.dart';
import 'seller_profile_screen.dart';

class MediaScreen extends StatefulWidget {
  @override
  _MediaScreenState createState() => _MediaScreenState();
}

class _MediaScreenState extends State<MediaScreen> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: mediaList.length,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          MediaModel _mediaIndex = mediaList[index];

          return Container(
            margin: EdgeInsets.only(top: 40, left: 10, right: 10, bottom: 10),
            decoration: BoxDecoration(color: Colors.black, boxShadow: [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(-4.0, 2.0),
                blurRadius: 24.0,
              ),
            ]),
            height: 400,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 60,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    //======== CONTAIN NAME, PROFILE AND MENU ICON====
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            //======== SELLER PROFILE AND NAME=======
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0, top: 8),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    _mediaIndex.seller_name,
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  Text(
                                    _mediaIndex.post_date,
                                    style: TextStyle(
                                        fontSize: 11, color: Colors.grey),
                                  )
                                ],
                              ),
                            ),
                            //======== SELLER PROFILE AND NAME END HERE=======
                          ],
                        ),
                        Icon(
                          Icons.menu,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ),
                ),
                //======= CONTAIN STACK PROFILE,REACT BTN AND PROD IMAGES======
                Expanded(
                  child: Stack(
                    children: [
                      Container(
                        height: 280,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(_mediaIndex.product_image),
                                fit: BoxFit.fitHeight)),
                      ),
                      //=== Container Contain PROFILE PIC, AND REACT AS STACK
                      Container(
                        margin: EdgeInsets.only(left: 25, top: 30),
                        width: 80,
                        height: 160,
                        //  color: Colors.white,
                        child: Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            Positioned(
                              bottom: 0,
                              child: Container(
                                margin: EdgeInsets.only(left: 5, right: 5),
                                width: 55,
                                height: 145,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(30),
                                    bottomLeft: Radius.circular(30),
                                  ),
                                  color: Colors.orange.withOpacity(0.9),
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    SizedBox(
                                      height: 40,
                                    ),
                                    CircleAvatar(
                                      backgroundColor: Colors.white,
                                      radius: 15,
                                      child: CircleAvatar(
                                        backgroundColor: Colors.white,
                                        radius: 11,
                                        backgroundImage: AssetImage(
                                            "assets/icons/spoon_eat.png"),
                                      ),
                                    ),
                                    CircleAvatar(
                                        backgroundColor: Colors.white,
                                        radius: 15,
                                        child: CircleAvatar(
                                          backgroundColor: Colors.white,
                                          radius: 11,
                                          backgroundImage: AssetImage(
                                              "assets/icons/love.png"),
                                        )),
                                  ],
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SellerAccScreen(
                                            profileIndex: _mediaIndex)));
                              },
                              child: CircleAvatar(
                                radius: 36,
                                backgroundColor: Colors.white,
                                child: CircleAvatar(
                                  backgroundColor: Colors.grey,
                                  radius: 32,
                                  backgroundImage:
                                      AssetImage(_mediaIndex.seller_profile),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                //======== Seller Description =======
                Container(
                  padding: EdgeInsets.all(10),
                  height: 60,
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text('Amzing Taste'),
                      Text('Get Delicious food all day')
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
