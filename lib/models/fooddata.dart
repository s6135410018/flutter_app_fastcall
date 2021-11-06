//ไฟบ์ประเภทโมเดล คือ ไฟล์ที่ใช้ในการจัดการข้อมูล
class Fooddata{
  String name = "";
  String website = "";
  String facebook = "";
  String mobile = "";
  String image = "";
  String gps = "";

  Fooddata({
      required this.name,
      required this.website,
      required this.facebook,
      required this.mobile,
      required this.image,
      required this.gps,
    });
}