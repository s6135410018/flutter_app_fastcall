import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class FoodshowUI extends StatefulWidget {
  //สร้างตัวแปรที่จะเก็บค่าที่มาจากหน้า FoodlistUI
  String name = "";
  String website = "";
  String facebook = "";
  String mobile = "";
  String image = "";
  String gps = "";

  //คอนสตรัคเตอร์ เอาไว้รับค่าที่มาจากหน้า FoodlistUI กำหนดให้ตัวแปรข้างบน
  FoodshowUI({
    Key? key,
    required this.name,
    required this.website,
    required this.facebook,
    required this.mobile,
    required this.image,
    required this.gps,
  }) : super(key: key);

  @override
  _FoodshowUIState createState() => _FoodshowUIState();
}

class _FoodshowUIState extends State<FoodshowUI> {
  //เปิดแอปเบราเซอร์เพื่อเปิดเว็บ
  Future<void> _launchInBrowser(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
        headers: <String, String>{'my_header_key': 'my_header_value'},
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  //เปิดแอปโทรศัพท์เพื่อโทร
  Future<void> _makePhoneCall(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffFF512A),
        title: Text(
          "รายละเอียดร้านค้า",
          style: TextStyle(
            fontSize: 25.0,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 50.0,
              ),
              Image.asset(
                "assets/images/" + widget.image,
                width: 150.0,
              ),
              SizedBox(
                height: 40.0,
              ),
              Container(
                width: MediaQuery.of(context).size.width - 50.0,
                child: Card(
                  color: Colors.deepOrange[200],
                  elevation: 10.0,
                  shadowColor: Colors.deepOrange,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      30.0,
                    ),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(
                          10.0,
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.person,
                              color: Colors.deepOrange[600],
                            ),
                            Text(
                              "   Name :  " + widget.name,
                              style: TextStyle(
                                fontSize: 15.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.grey,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(
                          10.0,
                        ),
                        child: Row(
                          children: [
                            Icon(
                              FontAwesomeIcons.globeAsia,
                              color: Colors.deepOrange[600],
                            ),
                            Text(
                              "   Website :  " + widget.website,
                              style: TextStyle(
                                fontSize: 15.0,
                              ),
                            ),
                            Expanded(
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Icon(
                                  FontAwesomeIcons.desktop,
                                  color: Colors.deepOrange[400],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.grey,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(
                          10.0,
                        ),
                        child: Row(
                          children: [
                            Icon(
                              FontAwesomeIcons.facebookF,
                              color: Colors.deepOrange[600],
                            ),
                            Text(
                              "   Facebook :  " + widget.facebook,
                              style: TextStyle(
                                fontSize: 15.0,
                              ),
                            ),
                            Expanded(
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Text("Like",
                                    style: TextStyle(
                                      color: Colors.deepOrange[400],
                                    )),
                              ),
                            )
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.grey,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(
                          10.0,
                        ),
                        child: Row(
                          children: [
                            Icon(
                              FontAwesomeIcons.mobileAlt,
                              color: Colors.deepOrange[600],
                            ),
                            Text(
                              "   Mobile :  " + widget.mobile,
                              style: TextStyle(
                                fontSize: 15.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 35.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {
                      _launchInBrowser(
                        widget.website,
                      );
                    },
                    icon: Icon(
                      FontAwesomeIcons.globeAsia,
                    ),
                    label: Text(
                      "เปิดเว็บ",
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.deepOrange,
                        fixedSize: Size(
                          120.0,
                          50.0,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            20.0,
                          ),
                        )),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      _makePhoneCall(
                        "tel: " + widget.mobile,
                      );
                    },
                    icon: Icon(
                      FontAwesomeIcons.phoneVolume,
                    ),
                    label: Text(
                      "โทรเลย",
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.deepOrange,
                        fixedSize: Size(
                          120.0,
                          50.0,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            20.0,
                          ),
                        )),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      _launchInBrowser(
                        widget.gps,
                      );
                    },
                    icon: Icon(
                      FontAwesomeIcons.mapMarked,
                    ),
                    label: Text(
                      "เปิดพิกัด",
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.deepOrange,
                        fixedSize: Size(
                          120.0,
                          50.0,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            20.0,
                          ),
                        )),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
