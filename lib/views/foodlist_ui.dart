import 'package:flutter/material.dart';
import 'package:flutter_app_fastcall/models/fooddata.dart';
import 'package:flutter_app_fastcall/views/foodshow_ui.dart';

class FoodListUI extends StatefulWidget {
  const FoodListUI({Key? key}) : super(key: key);

  @override
  _FoodListUIState createState() => _FoodListUIState();
}

class _FoodListUIState extends State<FoodListUI> {
  //โค้ดข้อมูลร้านอาหารซึ่งเกี่ยวข้องกับไฟล์ประเภทโมเดล fooddata.dart
  List<Fooddata> fooddata = [
    Fooddata(
      name: 'Chesters Grill',
      website: 'http://www.chesters.co.th',
      facebook: 'chesterthai',
      mobile: '1145',
      image: 'f1.jpg',
      gps: 'https://www.google.co.th/maps/@13.6886669,100.4315382,18.75z',
//พิกัด
    ),
    Fooddata(
      name: 'Narai Pizzeria',
      website: 'http://www.naraipizzeria.com',
      facebook: 'naraipizzeria',
      mobile: '1744',
      image: 'f2.jpg',
      gps: 'https://www.google.com/maps/@13.7137871,100.4073219,19.75z',
    ),
    Fooddata(
      name: 'S&P',
      website: 'http://www.snpfood.com',
      facebook: 'snpfood',
      mobile: '1344',
      image: 'f3.jpg',
      gps: 'https://www.google.com/maps/@13.7137137,100.4076638,19.75z',
    ),
    Fooddata(
      name: 'Oishi',
      website: 'http://www.oishifood.com',
      facebook: 'oishifoodstation',
      mobile: '1773',
      image: 'f4.jpg',
      gps: 'https://www.google.com/maps/@13.7335566,100.5269345,17.75z',
    ),
    Fooddata(
      name: 'MK Restaurants',
      website: 'http://www.mkrestaurant.com',
      facebook: 'mkrestaurants',
      mobile: '02-248-5555',
      image: 'f5.jpg',
      gps: 'https://www.google.com/maps/@13.8659252,100.49675,21z',
    ),
    Fooddata(
      name: 'The Pizza',
      website: 'http://www.1112.com',
      facebook: 'thepizzacompany',
      mobile: '1112',
      image: 'f6.jpg',
      gps: 'https://www.google.com/maps/@13.8663031,100.4961031,21z',
    ),
    Fooddata(
      name: 'Mc Donals',
      website: 'http://www.mcdonalds.co.th',
      facebook: 'McThai',
      mobile: '1711',
      image: 'f7.jpg',
      gps: 'https://www.google.com/maps/@13.9040865,100.4492074,18.04z',
    ),
    Fooddata(
      name: 'Pizza Hut',
      website: 'http://www.pizzahut.co.th',
      facebook: 'pizzahutthailand',
      mobile: '1150',
      image: 'f8.jpg',
      gps: 'https://www.google.com/maps/@13.9067628,100.5196288,19.5z',
    ),
    Fooddata(
      name: 'KFC',
      website: 'http://www.kfc.co.th',
      facebook: 'kfcth',
      mobile: '1150',
      image: 'f9.jpg',
      gps: 'https://www.google.com/maps/@13.907255,100.502111,19.75z',
    ),
    Fooddata(
      name: 'JJ Delivery',
      website: 'http://www.jjdelivery.com',
      facebook: 'jjdelivery',
      mobile: '02-712-3000',
      image: 'f10.jpg',
      gps: 'https://www.google.com/maps/@13.7239029,100.5783798,21z',
    ),
    Fooddata(
      name: 'Burger King',
      website: 'http://www.burgerking.co.th',
      facebook: 'burgerkingthailand',
      mobile: '1112',
      image: 'f11.jpg',
      gps: 'https://www.google.com/maps/@13.7423659,100.5523892,19.79z',
    ),
    Fooddata(
      name: 'See Fah',
      website: 'http://www.seefah.com',
      facebook: 'seefahfanpage',
      mobile: '02-800-8080',
      image: 'f12.jpg',
      gps: 'https://www.google.com/maps/@13.7379044,100.5600776,20.25z',
    ),
    Fooddata(
      name: 'ฮองมิน',
      website: 'http://www.hongminrestaurant.net',
      facebook: 'hongminfanpage',
      mobile: '02-248-0123',
      image: 'f13.jpg',
      gps: 'https://www.google.com/maps/@13.8094374,100.5673943,18.54z',
    ),
    Fooddata(
      name: 'Yoshinoya',
      website: 'http://www.yoshinoya.co.th',
      facebook: 'YoshinoyaThailand',
      mobile: '02-663-3888',
      image: 'f14.jpg',
      gps: 'https://www.google.com/maps/@13.8159025,100.5605677,19.29z',
    ),
    Fooddata(
      name: 'ฮั่วเซ่งฮง',
      website: 'http://www.huasenghong.co.th',
      facebook: 'huasenghong',
      mobile: '02-2480123',
      image: 'f15.jpg',
      gps: 'https://www.google.com/maps/@13.8738648,100.5482457,20.25z',
    ),
    Fooddata(
      name: 'Scoozi Pizza',
      website: 'http://www.scoozipizza.com',
      facebook: 'scoozipizzaclub',
      mobile: '02-715-8555',
      image: 'f16.jpg',
      gps: 'https://www.google.com/maps/@13.7284973,100.52679,20z',
    ),
    Fooddata(
      name: 'โดมิโน่ พิซซ่า',
      website: 'http://www.dominospizza.co.th',
      facebook: 'DominosPizzaThailand',
      mobile: '1612',
      image: 'f17.jpg',
      gps: 'https://www.google.com/maps/@13.7278705,100.5319445,20.04z',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffFF512A),
        title: Text(
          "สายด่วนชวนกิน",
          style: TextStyle(
            fontSize: 25.0,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView.separated(
        //สร้างเส้นแบ่ง
        separatorBuilder: (context, index) {
          return Divider(
            height: 10.0,
            color: Colors.deepOrange[200],
          );
        },
        //กำหนดจำนวนรายการใน ListView
        itemCount: fooddata.length,
        //สร้างแต่ละรายการของ ListView
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              //กดแล้วให้เปิดไปหน้าจอ FoodshowUI
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return FoodshowUI(
                      name: fooddata[index].name,
                      website: fooddata[index].website,
                      facebook: fooddata[index].facebook,
                      mobile: fooddata[index].mobile,
                      image: fooddata[index].image,
                      gps: fooddata[index].gps,
                    );
                  },
                ),
              );
            },
            leading: Image.asset(
              "assets/images/" + fooddata[index].image,
            ),
            title: Text(
              fooddata[index].name,
            ),
            subtitle: Text(
              fooddata[index].mobile,
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Colors.deepOrange[600],
            ),
          );
        },
      ),
    );
  }
}
