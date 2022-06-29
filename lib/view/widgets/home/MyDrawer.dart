import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_app/logic/controllers/auth_controller.dart';
import 'package:shop_app/logic/controllers/settings_controller.dart';
import 'package:shop_app/routes/routes.dart';
import 'package:shop_app/view/widgets/text_utils.dart';

import '../../../logic/controllers/category_controller.dart';
import '../category/category_items.dart';

class MyDrawer extends StatelessWidget {
  MyDrawer({Key? key}) : super(key: key);
  final controller = Get.find<SettingController>();
  final authController = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListView(
        children: [
          Obx(
            () => Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 80,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage(
                          authController.displayUserPhoto.value,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextUtils(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      text: controller
                          .capitalize(authController.displayUserName.value),
                      color: Get.isDarkMode ? Colors.white : Colors.black,
                      underLine: TextDecoration.none,
                    ),
                    TextUtils(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      text: authController.displayUserEmail.value,
                      color: Get.isDarkMode ? Colors.white : Colors.black,
                      underLine: TextDecoration.none,
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          //======================child account
          Container(
            padding: EdgeInsets.only(right: 10.0, left: 10.0),
            child: Column(
              children: <Widget>[
                InkWell(
                  onTap: () {

                  },
                  child: const ListTile(
                    title: Text(
                      "Bilgisayar/Tablet",
                      style: TextStyle(color: Colors.black87, fontSize: 16.0),
                    ),
                    leading: Icon(
                      Icons.phonelink,
                      color: Colors.green,
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black,
                      size: 18.0,
                    ),
                  ),
                ),
                Divider(
                  color: Colors.grey[500],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 10.0, left: 10.0),
            child: Column(
              children: <Widget>[
                InkWell(
                  onTap: () {
                    Get.toNamed(Routes.mainScreen);
                  },
                  child: ListTile(
                    title: Text(
                      "Cep Telefon",
                      style: TextStyle(color: Colors.black87, fontSize: 16.0),
                    ),
                    leading: Icon(
                      Icons.phone_iphone_sharp,
                      color: Colors.green,
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black,
                      size: 18.0,
                    ),
                  ),
                ),
                Divider(
                  color: Colors.grey[500],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 10.0, left: 10.0),
            child: Column(
              children: <Widget>[
                InkWell(
                  onTap: () {},
                  child: ListTile(
                    title: Text(
                      "Yazıcılar",
                      style: TextStyle(color: Colors.black87, fontSize: 16.0),
                    ),
                    leading: Icon(
                      Icons.print,
                      color: Colors.green,
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black,
                      size: 18.0,
                    ),
                  ),
                ),
                Divider(
                  color: Colors.grey[500],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 10.0, left: 10.0),
            child: Column(
              children: <Widget>[
                InkWell(
                  onTap: () {},
                  child: ListTile(
                    title: Text(
                      "Aksesuar",
                      style: TextStyle(color: Colors.black87, fontSize: 16.0),
                    ),
                    leading: Icon(
                      Icons.photo_album_sharp,
                      color: Colors.green,
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black,
                      size: 18.0,
                    ),
                  ),
                ),
                Divider(
                  color: Colors.grey[500],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 10.0, left: 10.0),
            child: Column(
              children: <Widget>[
                InkWell(
                  onTap: () {},
                  child: ListTile(
                    title: Text(
                      "TV,Görüntü",
                      style: TextStyle(color: Colors.black87, fontSize: 16.0),
                    ),
                    leading: Icon(
                      Icons.live_tv_outlined,
                      color: Colors.green,
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black,
                      size: 18.0,
                    ),
                  ),
                ),
                Divider(
                  color: Colors.grey[500],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 10.0, left: 10.0),
            child: Column(
              children: <Widget>[
                InkWell(
                  onTap: () {},
                  child: ListTile(
                    title: Text(
                      "Ses Sistemleri",
                      style: TextStyle(color: Colors.black87, fontSize: 16.0),
                    ),
                    leading: Icon(
                      Icons.surround_sound,
                      color: Colors.green,
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black,
                      size: 18.0,
                    ),
                  ),
                ),
                Divider(
                  color: Colors.grey[500],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 10.0, left: 10.0),
            child: Column(
              children: <Widget>[
                InkWell(
                  onTap: () {},
                  child: ListTile(
                    title: Text(
                      "Foto & Kamera",
                      style: TextStyle(color: Colors.black87, fontSize: 16.0),
                    ),
                    leading: Icon(
                      Icons.camera_alt_outlined,
                      color: Colors.green,
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black,
                      size: 18.0,
                    ),
                  ),
                ),
                Divider(
                  color: Colors.grey[500],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
